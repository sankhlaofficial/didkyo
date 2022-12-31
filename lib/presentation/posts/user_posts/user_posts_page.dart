import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:didkyo/application/auth/auth/auth_bloc.dart';
import 'package:didkyo/application/posts/post_actor/post_actor_bloc.dart';
import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/global_widgets/custom_app_bar.dart';
import 'package:didkyo/presentation/posts/post_form/post_form_page.dart';
import 'package:didkyo/presentation/posts/user_posts/widgets/user_posts_body.dart';
import 'package:didkyo/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class UserPostsPage extends StatelessWidget {
  final String appBarTitle;
  final String userId;

  const UserPostsPage(
      {super.key, required this.appBarTitle, required this.userId});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostWatcherBloc>(
          create: (context) => getIt<PostWatcherBloc>()
            ..add(
              PostWatcherEvent.watchAllStarted(userId),
            ),
        ),
        BlocProvider<PostActorBloc>(
            create: (context) => getIt<PostActorBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
                unauthenticated: (_) {
                  Get.offAll(() => const SignInPage());
                },
                orElse: () {});
          }),
          BlocListener<PostActorBloc, PostActorState>(
              listener: (context, state) {
            state.maybeMap(
                deleteFailure: (state) {
                  final snackBar = SnackBar(
                      duration: const Duration(seconds: 5),
                      elevation: 0,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Colors.transparent,
                      content: AwesomeSnackbarContent(
                          contentType: ContentType.failure,
                          title: '',
                          message: state.postFailure.map(
                              unexpected: (_) =>
                                  'Unexpected Error. Please try again.',
                              permissionDenied: (_) =>
                                  'Sorry you do not have permission to delete. Please contact the developer if this is not true.',
                              unableToUpdate: (_) =>
                                  'Server Error. Please try again later')));
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(snackBar);
                },
                orElse: () {});
          })
        ],
        child: Scaffold(
          appBar: const CustomAppBar(appBarTitle: 'Your posts '),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(() => PostFormPage());
            },
            child: const Icon(Icons.add),
          ),
          body: const UserPostsBody(),
        ),
      ),
    );
  }
}
