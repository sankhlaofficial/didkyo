import 'package:didkyo/domain/auth/user.dart';
import 'package:didkyo/presentation/global_widgets/shadow_container.dart';
import 'package:didkyo/presentation/posts/user_posts/user_posts_page.dart';
import 'package:didkyo/presentation/posts/user_posts/widgets/custom_container.dart';
import 'package:didkyo/presentation/profile/widgets/stats_container.dart';
import 'package:didkyo/presentation/profile/widgets/verfied_check.dart';
import 'package:didkyo/presentation/profile/widgets/your_posts_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GlobalProfilePage extends StatelessWidget {
  final User user;
  const GlobalProfilePage({Key? key, required this.user}) : super(key: key);
  static const String sampleWallpaper =
      'https://img.freepik.com/premium-photo/watercolor-grunge-background-yellow-colors-vintage-poster-banner-scrapbook-page-handmade-aged-paper-texture-retro-style-can-be-used-cards-invitations-web_154156-5525.jpg';
  static const String sampleProfileImage =
      'https://img.freepik.com/free-photo/half-profile-image-handsome-young-caucasian-man-with-good-skin-brown-eyes-black-stylish-hair-stubble-posing-isolated-against-blank-wall-looking-front-him-smiling_343059-4560.jpg?w=2000';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Text("My profile"),
        centerTitle: true,
        actions: [
          CustomContainer(
              containerColor: Colors.red,
              containerChild:
                  IconButton(onPressed: () {}, icon: Icon(Icons.settings)))
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
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
                        child: Container(
                          width: size.width,
                          height: size.height / 13,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
          SizedBox(
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
              SizedBox(
                width: 10,
              ),
              const VerfiedCheck()
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
                  Get.to(() => UserPostsPage(
                        appBarTitle: "Your posts",
                      ));
                },
                color: Colors.yellow,
                size: size,
                title: "Your Posts",
              ),
              YourPostsBar(
                onTap: () {},
                color: Color(0xffB2C8DF),
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
