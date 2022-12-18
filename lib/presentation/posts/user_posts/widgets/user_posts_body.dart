import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPostsBody extends StatelessWidget {
  const UserPostsBody({Key? key}) : super(key: key);

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
            return ListView.builder(
                itemCount: state.posts.length,
                itemBuilder: (context, index) {
                  final post = state.posts[index];
                  if (post.failureOption.isSome()) {
                    return Container(
                      color: Colors.red,
                      width: 100,
                      height: 100,
                    );
                  } else {
                    return Container(
                      color: Colors.green,
                      width: 100,
                      height: 100,
                    );
                  }
                });
          },
          loadFailure: (state) {
            return Container(
              color: Colors.grey,
              width: 100,
              height: 100,
            );
          });
    });
  }
}
