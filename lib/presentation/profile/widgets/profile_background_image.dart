import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileBackgroundImage extends StatelessWidget {
  const ProfileBackgroundImage({
    Key? key,
    required this.sampleWallpaper,
    required this.userId,
  }) : super(key: key);

  final String sampleWallpaper;
  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostWatcherBloc>()
        ..add(PostWatcherEvent.watchAllStarted(userId)),
      child: BlocBuilder<PostWatcherBloc, PostWatcherState>(
        builder: (context, state) {
          return state.map(initial: (_) {
            return Column(
              children: [
                CachedNetworkImage(
                  imageUrl: sampleWallpaper,
                  imageBuilder: (context, imageProvider) => Container(
                    height: MediaQuery.of(context).size.height / 1.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill, image: imageProvider)),
                  ),
                  placeholder: (context, url) => Container(
                    height: MediaQuery.of(context).size.height / 1.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.transparent),
                  ),
                ),
              ],
            );
          }, loadInProgress: (_) {
            return Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(sampleWallpaper))),
                ),
              ],
            );
          }, loadSuccess: (state) {
            log(state.posts.toString());
            return Column(
              children: [
                CachedNetworkImage(
                  imageUrl: state.posts.isNotEmpty
                      ? state.posts[0].postImage.getOrCrash()
                      : sampleWallpaper,
                  imageBuilder: (context, imageProvider) => Container(
                    height: MediaQuery.of(context).size.height / 1.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill, image: imageProvider)),
                  ),
                  placeholder: (context, url) => Container(
                    height: MediaQuery.of(context).size.height / 1.2,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.grey),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ],
            );
          }, loadFailure: (_) {
            return Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(sampleWallpaper))),
                ),
              ],
            );
          });
        },
      ),
    );
  }
}
