import 'package:cached_network_image/cached_network_image.dart';
import 'package:didkyo/application/posts/post_actor/post_actor_bloc.dart';
import 'package:didkyo/application/user/user_bloc.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/presentation/helpers/presentation_helpers.dart';
import 'package:didkyo/presentation/posts/post_full_screen/post_full_screen.dart';
import 'package:didkyo/presentation/posts/post_full_screen/widgets/like_button.dart';
import 'package:didkyo/presentation/profile/followers_page/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as nav;

class PostCardWidget extends StatelessWidget {
  final Post cardPost;

  const PostCardWidget({
    super.key,
    required this.cardPost,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => UserBloc()..add(const UserEvent.watchUserStarted()),
      child: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Container(),
              loadSuccess: (state) {
                return InkWell(
                  onTap: () {
                    nav.Get.to(
                        () => PostFullScreen(
                              currentUserId: state.user.id!.getOrCrash(),
                              clickedPost: cardPost,
                            ),
                        transition: nav.Transition.zoom);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 28.0, horizontal: 10),
                    child: Container(
                      width: size.width * 0.8,
                      height: size.height * 0.575,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Theme.of(context).cardTheme.color,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: const Offset(1, 1))
                        ],
                      ),
                      child: Column(
                        children: [
                          CachedNetworkImage(
                            imageUrl: cardPost.postImage.getOrCrash(),
                            imageBuilder: (context, imageProvider) => Container(
                              margin: const EdgeInsets.only(top: 2),
                              width: size.width * 0.94,
                              height: size.height * 0.37,
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  image: DecorationImage(
                                      fit: BoxFit.fill, image: imageProvider)),
                            ),
                            placeholder: (context, url) => Container(
                              margin: const EdgeInsets.only(top: 2),
                              width: size.width * 0.94,
                              height: size.height * 0.37,
                              decoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                              ),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0, top: 5),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        child: UserTile(
                                      followId: cardPost.postUserId,
                                      locationHeight: 20,
                                      location:
                                          cardPost.postLocation.getOrCrash(),
                                    )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18.0),
                                  child: Row(
                                    children: [
                                      // const SizedBox(
                                      //   width: 15,
                                      // ),
                                      // Row(
                                      //   children: [
                                      //     Text(
                                      //       PresentationHelpers.formatDateTime(
                                      //           cardPost.postDateTime),
                                      //       style: Theme.of(context).textTheme.titleSmall,
                                      //     ),
                                      //   ],
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 4),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    cardPost.postCaption.getOrCrash(),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18.0, vertical: 8),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                      child: LikeButton(
                                          likedByList: cardPost.postLikes,
                                          postId: cardPost.postID.getOrCrash(),
                                          postUserId: cardPost.postUserId),
                                    ),
                                    Text(
                                      cardPost.postLikes.length.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.comment,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                        cardPost.postComments.length.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall),
                                    const SizedBox(
                                      width: 75,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              PresentationHelpers
                                                  .formatDateTime(
                                                      cardPost.postDateTime),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              loadFailure: (_) => Container());
        },
      ),
    );
  }

  void _showDeleteDialogBox(BuildContext context, PostActorBloc postActorBloc) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Are you sure?"),
            content: const Text("Post once deleted cannot be recovered"),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel")),
              TextButton(
                  onPressed: () {
                    postActorBloc.add(PostActorEvent.deleted(cardPost));
                    Navigator.pop(context);
                  },
                  child: const Text("Delete")),
            ],
          );
        });
  }
}
