import 'package:didkyo/application/onePost/one_post_bloc.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:didkyo/presentation/posts/location_posts/location_posts_page.dart';
import 'package:didkyo/presentation/posts/post_full_screen/widgets/comment_box.dart';
import 'package:didkyo/presentation/posts/post_full_screen/widgets/like_button.dart';
import 'package:didkyo/presentation/profile/followers_page/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class PostFullScreen extends StatelessWidget {
  PostFullScreen({Key? key, required this.clickedPost}) : super(key: key);

  final Post clickedPost;

  bool isLiked = false;
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnePostBloc(context.repository<ActionsRepository>())
        ..add(LoadOnePost(postID: clickedPost.postID.getOrCrash())),
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
                resizeToAvoidBottomInset: false,
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
                ),
                body: SlidingUpPanel(
                    minHeight: 270,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    panel: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.0),
                            topRight: Radius.circular(40.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(28.0),
                          child: Column(
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
                                      Text(state.post.postViews.length
                                          .toString())
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(state.post.postCaption.getOrCrash(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500)),
                              const SizedBox(
                                height: 25,
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
                                      Text(state.post.postLikes.length
                                          .toString())
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
                                      Text(state.post.postComments.length
                                          .toString())
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
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
                              Expanded(
                                child: ListView.builder(
                                    itemCount: state.post.postComments.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: UserTile(
                                          followId: state
                                              .post
                                              .postComments[index]
                                              .commentUserId,
                                          locationHeight: 50,
                                          location: state
                                              .post
                                              .postComments[index]
                                              .commentMessage
                                              .getOrCrash(),
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
                        )),
                    body: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 1.2,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      state.post.postImage.getOrCrash()))),
                        ),
                      ],
                    )));
          }

          return const Center(
            child: Text("Something went wrong"),
          );
        },
      ),
    );
  }
}
