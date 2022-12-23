import 'package:didkyo/application/posts/post_actor/post_actor_bloc.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/presentation/helpers/presentation_helpers.dart';
import 'package:didkyo/presentation/posts/post_full_screen/post_full_screen.dart';
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
          height: size.height * 0.52,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(4, 5))
            ],
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 8),
                width: size.width * 0.9,
                height: size.height * 0.4,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2.5),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${cardPost.postUser!.displayName} ',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.push_pin_rounded,
                              color: Colors.red,
                            ),
                            Text(
                              cardPost.postLocation.getOrCrash(),
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          PresentationHelpers.formatDateTime(
                              cardPost.postDateTime),
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
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
