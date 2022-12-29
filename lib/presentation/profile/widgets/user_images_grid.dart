import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/posts/post_full_screen/post_full_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class UserImagesGrid extends StatelessWidget {
  const UserImagesGrid({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostWatcherBloc>()
        ..add(PostWatcherEvent.watchAllStarted(user.id!.getOrCrash())),
      child: BlocBuilder<PostWatcherBloc, PostWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Container(),
              loadSuccess: (state) {
                return Expanded(
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemCount: state.posts.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                              onTap: () {
                                Get.to(() => PostFullScreen(
                                    clickedPost: state.posts[index]));
                              },
                              child: Container(
                                margin: const EdgeInsets.all(3),
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: NetworkImage(state
                                            .posts[index].postImage
                                            .getOrCrash()))),
                              ));
                        }));
              },
              loadFailure: (_) => Container());
        },
      ),
    );
  }
}
