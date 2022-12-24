import 'package:didkyo/application/auth/auth/auth_bloc.dart';
import 'package:didkyo/application/posts/post_actor/post_actor_bloc.dart';
import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/global_widgets/custom_app_bar.dart';
import 'package:didkyo/presentation/posts/user_posts/widgets/user_posts_body.dart';
import 'package:didkyo/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class LocationPostsPage extends StatelessWidget {
  final String selectedLocation;

  const LocationPostsPage({super.key, required this.selectedLocation});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PostWatcherBloc>(
          create: (context) => getIt<PostWatcherBloc>()
            ..add(
              PostWatcherEvent.watchLocationSpecificStarted(selectedLocation),
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
                  Get.offAll(() => SignInPage());
                },
                orElse: () {});
          }),
        ],
        child: Scaffold(
          appBar: CustomAppBar(
            appBarTitle: selectedLocation,
          ),
          body: UserPostsBody(),
        ),
      ),
    );
  }
}
