import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:didkyo/application/auth/auth/auth_bloc.dart';
import 'package:didkyo/application/posts/post_actor/post_actor_bloc.dart';
import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/posts/user_posts/widgets/user_posts_body.dart';
import 'package:didkyo/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class UserPostsPage extends StatelessWidget {
  const UserPostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostWatcherBloc>(
          create: (context) => getIt<PostWatcherBloc>()
            ..add(
              const PostWatcherEvent.watchAllStarted(),
            ),
        ),
        BlocProvider<PostActorBloc>(create: (context) => getIt<PostActorBloc>())
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
          appBar: AppBar(
            title: const Text('User Created Posts'),
            leading: IconButton(
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              },
              icon: const Icon(Icons.logout_rounded),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          body: const UserPostsBody(),
        ),
      ),
    );
  }
}
