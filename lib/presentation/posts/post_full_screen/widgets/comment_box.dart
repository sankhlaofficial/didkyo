import 'dart:developer';

import 'package:didkyo/application/user/user_bloc.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CommentBox extends StatelessWidget {
  CommentBox({
    Key? key,
    required this.postId,
  }) : super(key: key);

  TextEditingController commentController = TextEditingController();
  final String postId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc()..add(UserEvent.watchUserStarted()),
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
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: 50,
                        child: TextField(
                          controller: commentController,
                          decoration:
                              InputDecoration(hintText: 'add a comment'),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          log(commentController.text);
                          context.repository<ActionsRepository>().addComment(
                              commentController.text,
                              state.user.id!.getOrCrash(),
                              postId);
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
