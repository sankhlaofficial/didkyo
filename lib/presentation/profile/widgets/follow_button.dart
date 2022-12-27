import 'dart:developer';

import 'package:didkyo/application/user/user_bloc.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FollowButton extends StatefulWidget {
  FollowButton({
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
  List<dynamic> localFollowers = [];

  @override
  void initState() {
    widget.followers.forEach((element) {
      localFollowers.add(element);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
          loadSuccess: (state) {
            isFollowing = localFollowers.contains(state.user.id!.getOrCrash())
                ? true
                : false;

            log("is following changed to ${isFollowing.toString()}");

            return ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        isFollowing ? Colors.green : Colors.blue)),
                onPressed: () {
                  log(widget.followers.toString());
                  if (isFollowing) {
                    localFollowers.remove(state.user.id!.getOrCrash());
                    setState(() {
                      isFollowing = false;

                      context.repository<ActionsRepository>().unFollowUser(
                          widget.userId, state.user.id!.getOrCrash());
                    });
                  } else {
                    localFollowers.add(state.user.id!.getOrCrash());
                    setState(() {
                      isFollowing = true;

                      context.repository<ActionsRepository>().followUser(
                          widget.userId, state.user.id!.getOrCrash());
                    });
                  }
                  log(state.user.id!.getOrCrash());
                },
                child: Text(isFollowing ? "Following \u2713" : "Follow"));
          },
          loadFailure: (_) => const Center(
                child: Text('Some error'),
              ));
    });
  }
}
