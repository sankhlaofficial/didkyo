import 'package:didkyo/application/user/user_bloc.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
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
                    onPressed: () {
                      if (isLiked) {
                        context.repository<ActionsRepository>().unLikePost(
                            toBeUnLikedPostId: postId,
                            postUserId: postUserId,
                            currentUserId: state.user.id!.getOrCrash());
                      } else {
                        context.repository<ActionsRepository>().likePost(
                            toBeLikedPostId: postId,
                            postUserId: postUserId,
                            currentUserId: state.user.id!.getOrCrash());
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
