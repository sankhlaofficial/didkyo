import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/presentation/profile/followers_page/followAndFollowing_page.dart';
import 'package:didkyo/presentation/profile/followers_page/widgets/user_tile.dart';
import 'package:didkyo/presentation/profile/widgets/follow_button.dart';
import 'package:didkyo/presentation/profile/widgets/profile_background_image.dart';
import 'package:didkyo/presentation/profile/widgets/stats_container.dart';
import 'package:didkyo/presentation/profile/widgets/user_images_grid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          minHeight: MediaQuery.of(context).size.height / 1.8,
          panel: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
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
                    const Text(
                      "This is Some user bio that I have to add jhfjf da this si to be done yo",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StatsContainer(
                          onTap: () {
                            Get.to(() => FollowAndFollowingPage(
                                  followList: user.followers!,
                                  pageTitle: "Followers",
                                ));
                          },
                          size: size,
                          number: user.followers!.length.toString(),
                          factor: "followers",
                        ),
                        StatsContainer(
                          onTap: () {},
                          size: size,
                          number: "50",
                          factor: "posts",
                        ),
                        StatsContainer(
                          onTap: () {
                            Get.to(() => FollowAndFollowingPage(
                                  followList: user.following!,
                                  pageTitle: "Following",
                                ));
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
              )),
          body: ProfileBackgroundImage(
            sampleWallpaper: sampleWallpaper,
            userId: user.id!.getOrCrash(),
          )),
    );
  }
}
