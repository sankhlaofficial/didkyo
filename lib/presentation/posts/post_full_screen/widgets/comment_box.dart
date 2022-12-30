import 'dart:developer';

import 'package:didkyo/application/user/user_bloc.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentBox extends StatelessWidget {
  CommentBox({
    Key? key,
    required this.postId,
    required this.postUserId,
  }) : super(key: key);

  TextEditingController commentController = TextEditingController();
  final String postId;
  final String postUserId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc()..add(const UserEvent.watchUserStarted()),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Container(),
              loadSuccess: (state) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 1.8,
                        height: 50,
                        child: TextField(
                          scrollPadding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom +
                                  120),
                          controller: commentController,
                          decoration:
                              const InputDecoration(hintText: 'add a comment'),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          log(commentController.text);
                          context.repository<ActionsRepository>().addComment(
                              commentMessage: commentController.text,
                              currentUserId: state.user.id!.getOrCrash(),
                              postUserId: postUserId,
                              postId: postId);
                        },
                        icon: const Icon(Icons.send))
                  ],
                );
              },
              loadFailure: (_) => Container());
        },
      ),
    );
  }
}
