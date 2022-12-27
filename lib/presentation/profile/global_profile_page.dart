import 'dart:developer';

import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/presentation/global_widgets/shadow_container.dart';
import 'package:didkyo/presentation/posts/user_posts/user_posts_page.dart';
import 'package:didkyo/presentation/profile/widgets/stats_container.dart';
import 'package:didkyo/presentation/profile/widgets/verfied_check.dart';
import 'package:didkyo/presentation/profile/widgets/your_posts_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/follow_button.dart';

class GlobalProfilePage extends StatelessWidget {
  final User user;
  const GlobalProfilePage({Key? key, required this.user}) : super(key: key);
  static const String sampleWallpaper =
      'https://img.freepik.com/premium-photo/watercolor-grunge-background-yellow-colors-vintage-poster-banner-scrapbook-page-handmade-aged-paper-texture-retro-style-can-be-used-cards-invitations-web_154156-5525.jpg';

  @override
  Widget build(BuildContext context) {
    log(user.following.toString());
    Size size = MediaQuery.of(context).size;
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
                        decoration: const BoxDecoration(
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
              const FollowButton()
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StatsContainer(
                size: size,
                number: "1000",
                factor: "followers",
              ),
              StatsContainer(
                size: size,
                number: "50",
                factor: "posts",
              ),
              StatsContainer(
                size: size,
                number: "120",
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
