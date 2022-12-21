import 'package:didkyo/application/auth/auth/auth_bloc.dart';
import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/posts/global_posts/widgets/global_posts_body.dart';
import 'package:didkyo/presentation/posts/user_posts/widgets/custom_container.dart';
import 'package:didkyo/presentation/profile/profile_overview.dart';
import 'package:didkyo/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class GlobalPostsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostWatcherBloc>(
          create: (context) => getIt<PostWatcherBloc>()
            ..add(
              const PostWatcherEvent.watchGlobalStarted(),
            ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(listener: (context, state) {
            state.maybeMap(
                unauthenticated: (_) {
                  Get.offAll(() => SignInPage());
                },
                orElse: () {});
          }),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'All Posts',
              style: Theme.of(context).textTheme.headline6,
            ),
            leading: CustomContainer(
              containerColor: Colors.transparent,
              containerChild: IconButton(
                onPressed: () {
                  context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                },
                icon: const Icon(Icons.logout_rounded),
              ),
            ),
            actions: [
              CustomContainer(
                containerColor: Colors.yellow,
                containerChild: IconButton(
                    onPressed: () {
                      Get.to(() => ProfileOverview());
                    },
                    icon: const Icon(Icons.person)),
              )
            ],
          ),
          body: GlobalPostsBody(),
        ),
      ),
    );
  }
}
