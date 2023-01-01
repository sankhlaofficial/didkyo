import 'dart:developer';

import 'package:didkyo/application/user/user_bloc.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:didkyo/presentation/global_widgets/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LikeButton extends StatelessWidget {
  LikeButton({
    Key? key,
    required this.likedByList,
    required this.postId,
    required this.postUserId,
  }) : super(key: key);
  final List<dynamic> likedByList;
  bool isLiked = false;
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
                context.repository<ActionsRepository>().addView(
                    postId: postId,
                    postUserId: postUserId,
                    currentUserId: state.user.id!.getOrCrash());
                isLiked = likedByList.contains(state.user.id!.getOrCrash())
                    ? true
                    : false;

                return IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      if (isLiked) {
                        context
                            .repository<ActionsRepository>()
                            .unLikePost(
                                toBeUnLikedPostId: postId,
                                postUserId: postUserId,
                                currentUserId: state.user.id!.getOrCrash())
                            .whenComplete(() {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(CustomSnackBar(
                            behavior: SnackBarBehavior.floating,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            margin: const EdgeInsets.all(30),
                            content: Text(
                              "Like removed",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ));
                        }).onError((error, stackTrace) {
                          log('error is${error}');
                          log('stacktrace  is$stackTrace');
                          ScaffoldMessenger.of(context)
                              .showSnackBar(CustomSnackBar(
                            behavior: SnackBarBehavior.floating,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            margin: const EdgeInsets.all(30),
                            content: Text(
                              error.toString(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ));
                        });
                      } else {
                        context
                            .repository<ActionsRepository>()
                            .likePost(
                                toBeLikedPostId: postId,
                                postUserId: postUserId,
                                currentUserId: state.user.id!.getOrCrash())
                            .whenComplete(() {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(CustomSnackBar(
                            behavior: SnackBarBehavior.floating,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            margin: const EdgeInsets.all(30),
                            content: Text(
                              "Like added",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ));
                        }).onError((error, stackTrace) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(CustomSnackBar(
                            behavior: SnackBarBehavior.floating,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            backgroundColor:
                                Theme.of(context).scaffoldBackgroundColor,
                            margin: const EdgeInsets.all(30),
                            content: Text(
                              error.toString(),
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ));
                        });
                      }
                    },
                    icon: !isLiked
                        ? const Icon(
                            Icons.favorite_border,
                            color: Colors.blue,
                          )
                        : const Icon(
                            Icons.favorite,
                            color: Colors.blue,
                          ));
              },
              loadFailure: (_) => Container());
        },
      ),
    );
  }
}
