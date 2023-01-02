import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:didkyo/application/onePost/one_post_bloc.dart';
import 'package:didkyo/application/posts/post_actor/post_actor_bloc.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/posts/location_posts/location_posts_page.dart';
import 'package:didkyo/presentation/posts/post_form/post_form_page.dart';
import 'package:didkyo/presentation/posts/post_full_screen/widgets/comment_box.dart';
import 'package:didkyo/presentation/posts/post_full_screen/widgets/like_button.dart';
import 'package:didkyo/presentation/profile/followers_page/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PostFullScreen extends StatelessWidget {
  PostFullScreen(
      {Key? key, required this.clickedPost, required this.currentUserId})
      : super(key: key);

  final Post clickedPost;
  final String currentUserId;

  bool isLiked = false;
  TextEditingController commentController = TextEditingController();
  PanelController panelController = PanelController();
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    log(currentUserId + "+" + clickedPost.postUserId);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              OnePostBloc(context.repository<ActionsRepository>())
                ..add(LoadOnePost(postID: clickedPost.postID.getOrCrash())),
        ),
        BlocProvider<PostActorBloc>(
            create: (context) => getIt<PostActorBloc>()),
      ],
      child: BlocBuilder<OnePostBloc, OnePostState>(
        builder: (context, state) {
          if (state is OnePostLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }
          if (state is OnePostLoaded) {
            return Scaffold(
              extendBodyBehindAppBar: true,
              resizeToAvoidBottomInset: true,
              appBar: AppBar(
                iconTheme: const IconThemeData(
                  color: Colors.white,
                ),
                backgroundColor: Colors.transparent,
                // title: Text(
                //   state.post.postLocation.getOrCrash(),
                //   style: Theme.of(context).textTheme.displayMedium,
                // ),
                centerTitle: true,
                actions: [
                  Visibility(
                    visible:
                        clickedPost.postUserId == currentUserId ? true : false,
                    child: PopupMenuButton(
                        icon: const Icon(
                          Icons.more_horiz_rounded,
                          color: Colors.white,
                        ),
                        itemBuilder: (context) {
                          return [
                            const PopupMenuItem<int>(
                              value: 0,
                              child: Text("Edit"),
                            ),
                            const PopupMenuItem<int>(
                              value: 1,
                              child: Text("Delete"),
                            ),
                          ];
                        },
                        onSelected: (value) {
                          if (value == 0) {
                            Get.to(() => PostFormPage(
                                  onPostCreation: () {
                                    Get.back();
                                  },
                                  editedPost: clickedPost,
                                ));
                          } else if (value == 1) {
                            final postActorBloc = context.bloc<PostActorBloc>();
                            _showDeleteDialogBox(context, postActorBloc);
                          }
                        }),
                  )
                ],
              ),
              body: SlidingUpPanel(
                  controller: panelController,
                  minHeight: 200,
                  onPanelClosed: () {
                    scrollController.animateTo(
                        //go to top of scroll
                        0, //scroll offset to go
                        duration: const Duration(
                            milliseconds: 500), //duration of scroll
                        curve: Curves.fastOutSlowIn //scroll type
                        );
                  },
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  panel: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(28.0),
                        child: SingleChildScrollView(
                          controller: scrollController,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  UserTile(
                                    followId: state.post.postUserId,
                                    location:
                                        state.post.postLocation.getOrCrash(),
                                    locationHeight: 20,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.remove_red_eye_rounded,
                                        color: Colors.blue,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        state.post.postViews.length.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(state.post.postCaption.getOrCrash(),
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      LikeButton(
                                        postUserId: state.post.postUserId,
                                        postId: state.post.postID.getOrCrash(),
                                        likedByList: state.post.postLikes,
                                      ),
                                      Text(
                                        state.post.postLikes.length.toString(),
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
                                        width: 18,
                                      ),
                                      Text(
                                        state.post.postComments.length
                                            .toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            if (panelController.isPanelClosed) {
                                              panelController.open();
                                            } else {
                                              panelController.close();
                                            }
                                          },
                                          child: Text("See more",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium)),
                                      IconButton(
                                          onPressed: () {
                                            if (panelController.isPanelClosed) {
                                              panelController.open();
                                            } else {
                                              panelController.close();
                                            }
                                          },
                                          icon: const Icon(
                                            Icons.unfold_more_rounded,
                                            color: Colors.blue,
                                            size: 32,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Get.to(() => LocationPostsPage(
                                          selectedLocation: state
                                              .post.postLocation
                                              .getOrCrash()));
                                    },
                                    child: Text(
                                      "More from ${state.post.postLocation.getOrCrash()}",
                                      style:
                                          const TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              MediaQuery.removePadding(
                                context: context,
                                removeTop: true,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: state.post.postComments.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 12.0),
                                        child: CommentTile(
                                          index: index,
                                          state: state,
                                        ),
                                      );
                                    }),
                              ),
                              CommentBox(
                                postUserId: state.post.postUserId,
                                postId: state.post.postID.getOrCrash(),
                              ),
                            ],
                          ),
                        ),
                      )),
                  body: Column(
                    children: [
                      InteractiveViewer(
                        child: CachedNetworkImage(
                          imageUrl: state.post.postImage.getOrCrash(),
                          imageBuilder: (context, imageProvider) => Container(
                            height: MediaQuery.of(context).size.height / 1.2,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: imageProvider)),
                          ),
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  CircularProgressIndicator(
                                      value: downloadProgress.progress),
                        ),
                      ),
                    ],
                  )),
            );
          }

          return const Center(
            child: Text("Something went wrong"),
          );
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
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    postActorBloc.add(PostActorEvent.deleted(clickedPost));
                    Navigator.pop(context);
                  },
                  child: const Text("Delete",
                      style: TextStyle(color: Colors.black))),
            ],
          );
        });
  }
}

class CommentTile extends StatelessWidget {
  const CommentTile({
    Key? key,
    required this.index,
    required this.state,
  }) : super(key: key);

  final int index;
  final OnePostLoaded state;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        UserTile(
          titleColor: Colors.blue,
          radius: 14,
          nameHeight: 28,
          followId: state.post.postComments[index].commentUserId,
          locationHeight: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 44,
            ),
            Expanded(
              child: Text(
                state.post.postComments[index].commentMessage.getOrCrash(),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        )
      ],
    );
  }
}
