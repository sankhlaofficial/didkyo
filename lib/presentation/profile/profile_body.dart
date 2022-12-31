import 'package:didkyo/application/posts/post_watcher/post_watcher_bloc.dart';
import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/injection.dart';
import 'package:didkyo/presentation/profile/followers_page/followAndFollowing_page.dart';
import 'package:didkyo/presentation/profile/followers_page/widgets/user_tile.dart';
import 'package:didkyo/presentation/profile/widgets/follow_button.dart';
import 'package:didkyo/presentation/profile/widgets/profile_background_image.dart';
import 'package:didkyo/presentation/profile/widgets/stats_container.dart';
import 'package:didkyo/presentation/profile/widgets/user_images_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart' as nav;
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({
    Key? key,
    required this.size,
    required this.sampleWallpaper,
    required this.user,
  }) : super(key: key);

  final Size size;
  final String sampleWallpaper;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        // title: Text(
        //   "My profile",
        //   style: Theme.of(context).textTheme.displayMedium,
        // ),
        centerTitle: true,
      ),
      body: SlidingUpPanel(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          minHeight: MediaQuery.of(context).size.height / 2.1,
          panel: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          UserTile(
                            followId: user.id!.getOrCrash(),
                            locationHeight: 20,
                          ),
                          Row(
                            children: [
                              FollowButton(
                                userId: user.id!.getOrCrash(),
                                followers: user.followers!,
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            user.bio!,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StatsContainer(
                            onTap: () {
                              nav.Get.to(
                                  () => FollowAndFollowingPage(
                                        followList: user.followers!,
                                        pageTitle: "Followers",
                                      ),
                                  transition: nav.Transition.rightToLeft);
                            },
                            size: size,
                            number: user.followers!.length.toString(),
                            factor: "followers",
                          ),
                          BlocProvider(
                            create: (context) => getIt<PostWatcherBloc>()
                              ..add(PostWatcherEvent.watchAllStarted(
                                  user.id!.getOrCrash())),
                            child:
                                BlocBuilder<PostWatcherBloc, PostWatcherState>(
                              builder: (context, state) {
                                return state.map(
                                    initial: (_) => Container(),
                                    loadInProgress: (_) => Container(),
                                    loadSuccess: (state) {
                                      return StatsContainer(
                                        onTap: () {},
                                        size: size,
                                        number: state.posts.length.toString(),
                                        factor: "posts",
                                      );
                                    },
                                    loadFailure: (_) => Container());
                              },
                            ),
                          ),
                          StatsContainer(
                            onTap: () {
                              nav.Get.to(
                                  () => FollowAndFollowingPage(
                                        followList: user.following!,
                                        pageTitle: "Following",
                                      ),
                                  transition: nav.Transition.rightToLeft);
                            },
                            size: size,
                            number: user.following!.length.toString(),
                            factor: "following",
                          )
                        ],
                      ),
                      UserImagesGrid(user: user)
                    ],
                  ),
                ),
              )),
          body: ProfileBackgroundImage(
            sampleWallpaper: sampleWallpaper,
            userId: user.id!.getOrCrash(),
          )),
    );
  }
}
