import 'package:didkyo/presentation/posts/user_posts/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class GlobalProfilePage extends StatelessWidget {
  const GlobalProfilePage({Key? key}) : super(key: key);
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
      body: Stack(children: [
        Container(
          alignment: Alignment.center,
          width: size.width,
          height: size.height / 3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: NetworkImage(sampleWallpaper))),
        ),
        // Container(
        //   alignment: Alignment.bottomCenter,
        //   width: size.width,
        //   height: 0,
        //   decoration: BoxDecoration(
        //       border: Border.all(color: Colors.black, width: 2)),
        // ),
        Positioned(
          bottom: size.height / 2300,
          left: size.width * 0.3,
          child: Container(
            alignment: Alignment.bottomCenter,
            width: size.width / 3,
            height: size.height / 7,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5),
                image: DecorationImage(
                    fit: BoxFit.fill, image: NetworkImage(sampleProfileImage))),
          ),
        )
      ]),
    );
  }
}
