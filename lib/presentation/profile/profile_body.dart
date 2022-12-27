import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/presentation/global_widgets/shadow_container.dart';
import 'package:didkyo/presentation/posts/user_posts/user_posts_page.dart';
import 'package:didkyo/presentation/profile/followers_page/followAndFollowing_page.dart';
import 'package:didkyo/presentation/profile/widgets/follow_button.dart';
import 'package:didkyo/presentation/profile/widgets/stats_container.dart';
import 'package:didkyo/presentation/profile/widgets/verfied_check.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/your_posts_bar.dart';

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
        title: Text(
          "My profile",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: size.width,
                height: size.height / 2.5,
                child: Stack(
                    alignment: Alignment.topCenter,
                    fit: StackFit.loose,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: size.width,
                        height: size.height / 3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(sampleWallpaper))),
                      ),
                      Positioned(
                        bottom: 55,
                        child: Container(
                          width: size.width,
                          height: 0,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                        ),
                      ),
                      Positioned(
                        bottom: 15,
                        child: ShadowContainer(
                          color: Colors.transparent,
                          child: Container(
                            width: size.width / 3,
                            height: size.height / 7,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.black, width: 1.5),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(user.photoUrl!))),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: SizedBox(
                          width: size.width,
                          height: size.height / 13,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                user.displayName!,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 22),
              ),
              const SizedBox(
                width: 10,
              ),
              const VerfiedCheck(),
              const SizedBox(
                width: 20,
              ),
              FollowButton(
                userId: user.id!.getOrCrash(),
                followers: user.followers!,
              )
            ],
          ),
          const SizedBox(
            height: 30,
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
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              YourPostsBar(
                onTap: () {
                  Get.to(() => const UserPostsPage(
                        appBarTitle: "Your posts",
                      ));
                },
                color: Colors.yellow,
                size: size,
                title: "Your Posts",
              ),
              YourPostsBar(
                onTap: () {},
                color: const Color(0xffB2C8DF),
                size: size,
                title: "Saved Posts",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
