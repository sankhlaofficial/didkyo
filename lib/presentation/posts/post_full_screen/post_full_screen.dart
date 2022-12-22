import 'package:didkyo/domain/posts/post.dart';
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
      appBar: AppBar(
        title: Text(clickedPost.postLocation.getOrCrash()),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.bookmark_border_rounded))
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
                SizedBox(
                  width: 10,
                ),
                Text(
                  clickedPost.postUser!.displayName!,
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 70),
            width: size.width,
            child: Text(clickedPost.postCaption.getOrCrash()),
          )
        ],
      ),
    );
  }
}
