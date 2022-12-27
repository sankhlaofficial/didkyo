import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:dartz/dartz.dart';
import 'package:didkyo/application/posts/post_form/post_form_bloc.dart';
import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/posts/post_form/widgets/caption_field_widget.dart';
import 'package:didkyo/presentation/posts/post_form/widgets/image_field_widget.dart';
import 'package:didkyo/presentation/posts/post_form/widgets/location_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class PostFormPage extends StatelessWidget {
  final Post? editedPost;

  const PostFormPage({this.editedPost});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostFormBloc>()
        ..add(PostFormEvent.initialized(optionOf(editedPost))),
      child: BlocConsumer<PostFormBloc, PostFormState>(
        listenWhen: (p, c) =>
            p.savePostFailureOrSuccessOption !=
            c.savePostFailureOrSuccessOption,
        listener: (context, state) {
          state.savePostFailureOrSuccessOption.fold(() {}, (either) {
            either.fold((failure) {
              final snackBar = SnackBar(
                duration: const Duration(seconds: 5),
                elevation: 0,
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.transparent,
                content: AwesomeSnackbarContent(
                  contentType: ContentType.failure,
                  title: '',
                  message: failure.map(
                    unexpected: (_) =>
                        'Unexpected error occurred. Please contact support',
                    permissionDenied: (_) =>
                        'Insufficient permission. Please contact support',
                    unableToUpdate: (_) =>
                        'Unable to update post. Was it deleted from another interface?',
                  ),
                ),
              );
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(snackBar);
            }, (_) {
              Get.back();
            });
          });
        },
        buildWhen: (p, c) => p.isSaving != c.isSaving,
        builder: (context, state) {
          return Stack(children: <Widget>[
            PostFormPageScaffold(),
            SavingInProgressOverlay(
              isSaving: state.isSaving,
            )
          ]);
        },
      ),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({required this.isSaving});
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        color: isSaving ? Colors.black.withOpacity(0.5) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(
                color: Colors.blue,
              ),
              const SizedBox(
                height: 13,
              ),
              Text(
                'Saving',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
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
            return Text(
              state.isEditing ? 'Edit the post' : 'Create a post',
              style: Theme.of(context).textTheme.displayMedium,
            );
          },
        ),
      ),
      body: BlocBuilder<PostFormBloc, PostFormState>(
        condition: (p, c) => p.showErrorMessages != c.showErrorMessages,
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            child: SingleChildScrollView(
              child: Column(
                children: [CaptionField(), ImageField(), LocationField()],
              ),
            ),
          );
        },
      ),
    );
  }
}
