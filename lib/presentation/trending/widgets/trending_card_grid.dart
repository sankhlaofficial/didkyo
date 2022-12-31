import 'dart:developer';

import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/global_widgets/shadow_container.dart';
import 'package:didkyo/presentation/posts/location_posts/location_posts_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as nav;

class TrendingCardsGrid extends StatelessWidget {
  const TrendingCardsGrid({Key? key, required this.trendingData})
      : super(key: key);
  final Map trendingData;
  static const List cardColors = [
    Color(0xffFFD9C0),
    Color(0xffF4BFBF),
    Color(0xffCCF3EE),
  ];

  @override
  Widget build(BuildContext context) {
    log(trendingData.keys.toList().length.toString());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GridView.builder(
          itemCount: trendingData.keys.toList().length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return BlocProvider<PostWatcherBloc>(
              create: (context) => getIt<PostWatcherBloc>()
                ..add(
                  PostWatcherEvent.watchLocationSpecificStarted(
                      trendingData.keys.toList()[index]),
                ),
              child: BlocBuilder<PostWatcherBloc, PostWatcherState>(
                builder: (context, state) {
                  return state.map(
                      initial: (_) => Container(),
                      loadInProgress: (_) => Container(),
                      loadSuccess: (state) {
                        return InkWell(
                          onTap: () {
                            log(trendingData.keys.toList()[index]);
                            nav.Get.to(
                                () => LocationPostsPage(
                                    selectedLocation:
                                        trendingData.keys.toList()[index]),
                                transition: nav.Transition.upToDown);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 10),
                            child: ShadowContainer(
                              color: Colors.transparent,
                              child: Container(
                                width: 40,
                                height: 100,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(state
                                            .posts[0].postImage
                                            .getOrCrash())),
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.black)),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        trendingData.keys.toList()[index],
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      CircleAvatar(
                                        radius: 23,
                                        backgroundColor:
                                            Theme.of(context).cardTheme.color,
                                        child: Text(
                                          '${trendingData.values.toList()[index]} posts',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall!
                                              .copyWith(fontSize: 18),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      loadFailure: (_) => Container());
                },
              ),
            );
          }),
    );
  }
}
