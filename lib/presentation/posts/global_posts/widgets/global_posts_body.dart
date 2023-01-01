import 'dart:developer';

import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:didkyo/presentation/global_widgets/custom_snack_bar.dart';
import 'package:didkyo/presentation/posts/user_posts/widgets/post_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalPostsBody extends StatelessWidget {
  const GlobalPostsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostWatcherBloc, PostWatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(
                color: Colors.red,
              )),
          loadSuccess: (state) {
            return RefreshIndicator(
              onRefresh: () {
                context
                    .bloc<PostWatcherBloc>()
                    .add(const PostWatcherEvent.watchGlobalStarted());
                ScaffoldMessenger.of(context).showSnackBar(
                  CustomSnackBar(
                    content: Text(
                      "Page refreshed",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                );

                return Future.delayed(const Duration(seconds: 500));
              },
              child: ListView.builder(
                  cacheExtent: 999999999999999,
                  // shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  itemCount: state.posts.length,
                  itemBuilder: (context, index) {
                    final post = state.posts[index];
                    if (post.failureOption.isSome()) {
                      String failureValue = state.posts[index].failureOption
                          .fold(() => '', (f) => f.toString());

                      //Todo : Create a separate card for failure in data
                      return Container(
                        color: Colors.red,
                        width: 100,
                        height: 100,
                        child: Text(
                          failureValue,
                          style: const TextStyle(color: Colors.white),
                        ),
                      );
                    } else {
                      return PostCardWidget(
                        cardPost: state.posts[index],
                      );
                    }
                  }),
            );
          },
          loadFailure: (state) {
            state.postFailure.map(
                unexpected: (e) => log('unexpected error'),
                permissionDenied: (e) => log('permission denied'),
                unableToUpdate: (e) => log('unable to update'));
            //Todo : Create a separate card for loadFailure
            return Container(
              color: Colors.grey,
              width: 100,
              height: 100,
            );
          });
    });
  }
}
