import 'package:didkyo/presentation/global_widgets/custom_app_bar.dart';
import 'package:didkyo/presentation/profile/followers_page/widgets/FollowerTile.dart';
import 'package:flutter/material.dart';

class FollowersPage extends StatelessWidget {
  const FollowersPage({Key? key, required this.followersList})
      : super(key: key);

  final List<dynamic> followersList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: "Followers",
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
            itemCount: followersList.length,
            itemBuilder: (context, index) {
              return FollowerTile(
                followersList: followersList,
                index: index,
              );
            }),
      ),
    );
  }
}
