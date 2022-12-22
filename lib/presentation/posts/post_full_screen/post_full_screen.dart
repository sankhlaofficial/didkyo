import 'package:didkyo/domain/posts/post.dart';
import 'package:didkyo/presentation/global_widgets/shadow_container.dart';
import 'package:flutter/material.dart';

class PostFullScreen extends StatelessWidget {
  const PostFullScreen({Key? key, required this.clickedPost}) : super(key: key);

  final Post clickedPost;
  static const String sampleImage =
      'https://images.herzindagi.info/image/2022/Jul/things-to-do-in-kasol-himachal-pradesh_g.jpg';
  static const String sampleProfileImage =
      'https://media.istockphoto.com/id/1338134336/photo/headshot-portrait-african-30s-man-smile-look-at-camera.jpg?b=1&s=170667a&w=0&k=20&c=j-oMdWCMLx5rIx-_W33o3q3aW9CiAWEvv9XrJQ3fTMU=';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).cardTheme.color,
      appBar: AppBar(
        title: Text(clickedPost.postLocation.getOrCrash()),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ShadowContainer(
              color: Theme.of(context).cardTheme.color!,
              child: SizedBox(
                width: 50,
                height: 30,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_rounded)),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.height / 2.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(clickedPost.postImage.getOrCrash()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage:
                        NetworkImage(clickedPost.postUser!.photoUrl!),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ShadowContainer(
                  color: Colors.white,
                  child: Container(
                    width: size.width / 2.5,
                    height: size.height / 13,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        clickedPost.postUser!.displayName!,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 10),
            child: ShadowContainer(
              color: Colors.yellow,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(20),
                height: size.height / 4,
                width: size.width,
                child: Text(
                  clickedPost.postCaption.getOrCrash(),
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
