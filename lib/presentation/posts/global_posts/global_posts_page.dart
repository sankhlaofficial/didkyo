import 'package:didkyo/application/auth/auth/auth_bloc.dart';
import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/global_widgets/custom_app_bar.dart';
import 'package:didkyo/presentation/posts/global_posts/widgets/global_posts_body.dart';
import 'package:didkyo/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class GlobalPostsPage extends StatefulWidget {
  const GlobalPostsPage({super.key});

  @override
  State<GlobalPostsPage> createState() => _GlobalPostsPageState();
}

class _GlobalPostsPageState extends State<GlobalPostsPage>
    with AutomaticKeepAliveClientMixin {
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
                  Get.offAll(() => const SignInPage());
                },
                orElse: () {});
          }),
        ],
        child: const Scaffold(
          extendBodyBehindAppBar: true,
          appBar: CustomAppBar(
            appBarTitle: "Global Posts",
          ),
          body: GlobalPostsBody(),
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
