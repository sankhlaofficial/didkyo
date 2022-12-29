import 'package:didkyo/application/profile/profile_bloc.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:didkyo/presentation/profile/global_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
    required this.followId,
  }) : super(key: key);

  final String followId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        context.repository<ActionsRepository>(),
      )..add(LoadProfile(userID: followId)),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state is ProfileLoading) {
            return Container();
          }
          if (state is ProfileLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 0.0),
              child: InkWell(
                onTap: () {
                  Get.to(() => GlobalProfilePage(userId: followId));
                },
                child: Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 20,
                        backgroundImage: NetworkImage(
                          state.user.photoUrl!,
                        )),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 100,
                      height: 30,
                      child: Text(state.user.displayName!),
                    )
                  ],
                ),
              ),
            );
          }
          return const Center(
            child: Text("Something went wrong"),
          );
        },
      ),
    );
  }
}
