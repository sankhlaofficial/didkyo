import 'package:didkyo/application/user/user_bloc.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FollowButton extends StatefulWidget {
  const FollowButton({
    Key? key,
    required this.followers,
    required this.userId,
  }) : super(key: key);
  final List<dynamic> followers;
  final String userId;

  @override
  State<FollowButton> createState() => _FollowButtonState();
}

class _FollowButtonState extends State<FollowButton> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc()..add(const UserEvent.watchUserStarted()),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const Text("Loading"),
              loadSuccess: (state) {
                bool isVisible =
                    widget.userId == state.user.id!.getOrCrash() ? false : true;

                isFollowing =
                    widget.followers.contains(state.user.id!.getOrCrash())
                        ? true
                        : false;
                return Visibility(
                  visible: isVisible,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              isFollowing ? Colors.green : Colors.blue)),
                      onPressed: () async {
                        if (isFollowing) {
                          context.repository<ActionsRepository>().unFollowUser(
                              widget.userId, state.user.id!.getOrCrash());
                        } else {
                          context.repository<ActionsRepository>().followUser(
                              widget.userId, state.user.id!.getOrCrash());
                        }
                      },
                      child: Text(isFollowing ? "Following \u2713" : "Follow")),
                );
              },
              loadFailure: (_) => Container());
        },
      ),
    );
  }
}
