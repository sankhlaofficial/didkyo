import 'package:didkyo/application/posts/post_actor/post_actor_bloc.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/presentation/posts/post_form/post_form_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class PostCardWidget extends StatelessWidget {
  final Post cardPost;

  const PostCardWidget({
    required this.cardPost,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            cardPost.postCaption.getOrCrash(),
            style: Theme.of(context).textTheme.headline5,
          ),
          Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(cardPost.postImage.getOrCrash()))),
          ),
          Text(
            cardPost.postLocation.getOrCrash(),
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.blue),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    final postActorBloc = context.bloc<PostActorBloc>();
                    _showDeleteDialogBox(context, postActorBloc);
                  },
                  icon: const Icon(Icons.delete)),
              const SizedBox(
                width: 15,
              ),
              IconButton(
                  onPressed: () {
                    Get.to(() => PostFormPage(
                          editedPost: cardPost,
                        ));
                  },
                  icon: const Icon(Icons.edit)),
            ],
          )
        ],
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
