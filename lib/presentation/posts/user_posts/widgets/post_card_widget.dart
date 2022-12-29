import 'package:didkyo/application/posts/post_actor/post_actor_bloc.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/presentation/posts/post_full_screen/post_full_screen.dart';
import 'package:didkyo/presentation/profile/followers_page/widgets/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostCardWidget extends StatelessWidget {
  final Post cardPost;

  const PostCardWidget({
    required this.cardPost,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Get.to(() => PostFullScreen(
              clickedPost: cardPost,
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28.0, horizontal: 10),
        child: Container(
          width: size.width * 0.8,
          height: size.height * 0.575,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(1, 1))
            ],
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 2),
                width: size.width * 0.94,
                height: size.height * 0.37,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(cardPost.postImage.getOrCrash()))),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     IconButton(
              //         onPressed: () {
              //           final postActorBloc = context.bloc<PostActorBloc>();
              //           _showDeleteDialogBox(context, postActorBloc);
              //         },
              //         icon: const Icon(Icons.delete)),
              //     const SizedBox(
              //       width: 15,
              //     ),
              //     IconButton(
              //         onPressed: () {
              //           Get.to(() => PostFormPage(
              //                 editedPost: cardPost,
              //               ));
              //         },
              //         icon: const Icon(Icons.edit)),
              //   ],
              // )
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            child: UserTile(
                          followId: cardPost.postUserId,
                          locationHeight: 20,
                          location: cardPost.postLocation.getOrCrash(),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
                child: Row(
                  children: [
                    Text(
                      cardPost.postCaption.getOrCrash(),
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite, color: Colors.blue),
                        SizedBox(
                          width: 5,
                        ),
                        Text(cardPost.postLikes.length.toString())
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.comment,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(cardPost.postComments.length.toString())
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
