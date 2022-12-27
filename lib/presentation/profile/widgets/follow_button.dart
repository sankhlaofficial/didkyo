import 'dart:developer';

import 'package:flutter/material.dart';

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
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                isFollowing ? Colors.green : Colors.blue)),
        onPressed: () {
          log("followers are " + widget.followers.toString());
        },
        child: Text(isFollowing ? "Following \u2713" : "Follow"));
  }
}
