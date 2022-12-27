import 'package:didkyo/application/profile/profile_bloc.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FollowerTile extends StatelessWidget {
  const FollowerTile({
    Key? key,
    required this.followersList,
    required this.index,
  }) : super(key: key);
  final int index;

  final List followersList;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        context.repository<ActionsRepository>(),
      )..add(LoadProfile(userID: followersList[index])),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoading) {
            return Container();
          }
          if (state is ProfileLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image.network(
                      state.user.photoUrl!,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: Text(state.user.displayName!),
                  )
                ],
              ),
            );
          }
          return Center(
            child: Text("Something went wrong"),
          );
        },
      ),
    );
  }
}
