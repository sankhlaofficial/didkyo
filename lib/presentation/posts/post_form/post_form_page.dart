import 'package:didkyo/application/posts/post_form/post_form_bloc.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class PostFormPage extends StatelessWidget {
  final Post editedPost;

  const PostFormPage({required this.editedPost});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostFormBloc>(),
      child: const PostFormPageScaffold(),
    );
  }
}

class PostFormPageScaffold extends StatelessWidget {
  const PostFormPageScaffold();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () {
                  context.bloc<PostFormBloc>().add(const PostFormEvent.saved());
                },
                icon: const Icon(Icons.check))
          ],
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Get.back();
            },
          ),
          title: BlocBuilder<PostFormBloc, PostFormState>(
            condition: (previousState, currentState) =>
                previousState.isEditing != currentState.isEditing,
            builder: (context, state) {
              return Text(state.isEditing ? 'Edit the post' : 'Create a post');
            },
          )),
    );
  }
}
