import 'package:didkyo/application/onePost/one_post_bloc.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/infrastructure/actions/actions_repository.dart';
import 'package:didkyo/presentation/global_widgets/shadow_container.dart';
import 'package:didkyo/presentation/posts/location_posts/location_posts_page.dart';
import 'package:didkyo/presentation/posts/post_full_screen/widgets/comment_box.dart';
import 'package:didkyo/presentation/posts/post_full_screen/widgets/like_button.dart';
import 'package:didkyo/presentation/profile/followers_page/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class PostFullScreen extends StatelessWidget {
  PostFullScreen({Key? key, required this.clickedPost}) : super(key: key);

  final Post clickedPost;

  bool isLiked = false;
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => OnePostBloc(context.repository<ActionsRepository>())
        ..add(LoadOnePost(postID: clickedPost.postID.getOrCrash())),
      child: BlocBuilder<OnePostBloc, OnePostState>(
        builder: (context, state) {
          if (state is OnePostLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          }
          if (state is OnePostLoaded) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                title: Text(
                  state.post.postLocation.getOrCrash(),
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(() => LocationPostsPage(
                            selectedLocation:
                                state.post.postLocation.getOrCrash()));
                      },
                      child: ShadowContainer(
                        color: Theme.of(context).cardTheme.color!,
                        child: SizedBox(
                            width: 140,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: Text(
                                      "See all ${state.post.postLocation.getOrCrash()} posts")),
                            )),
                      ),
                    ),
                  )
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      height: size.width / 2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              NetworkImage(state.post.postImage.getOrCrash()),
                        ),
                      ),
                    ),
                    CommentBox(
                      postId: state.post.postID.getOrCrash(),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 12),
                          child: UserTile(followId: state.post.postUserId),
                        ),
                        LikeButton(
                          postId: state.post.postID.getOrCrash(),
                          likedByList: state.post.postLikes,
                        )
                      ],
                    ),
                    Text(state.post.postViews.length.toString()),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 10),
                      child: ShadowContainer(
                        color: Colors.yellow,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(12)),
                          padding: const EdgeInsets.all(20),
                          height: size.height / 8,
                          width: size.width,
                          child: Text(
                            state.post.postCaption.getOrCrash(),
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 170,
                      width: 190,
                      child: ListView.builder(
                          itemCount: state.post.postComments.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 140,
                              height: 50,
                              child: Text(state
                                  .post.postComments[index].commentMessage
                                  .getOrCrash()),
                            );
                          }),
                    )
                  ],
                ),
              ),
            );
          }

          return Center(
            child: Text("Something went wrong"),
          );
        },
      ),
    );
  }
}
