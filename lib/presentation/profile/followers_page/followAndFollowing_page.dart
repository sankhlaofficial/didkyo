import 'package:didkyo/presentation/global_widgets/custom_app_bar.dart';
import 'package:didkyo/presentation/profile/followers_page/widgets/user_tile.dart';
import 'package:flutter/material.dart';

class FollowAndFollowingPage extends StatelessWidget {
  const FollowAndFollowingPage(
      {Key? key, required this.followList, required this.pageTitle})
      : super(key: key);

  final List<dynamic> followList;
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBarTitle: pageTitle,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
            itemCount: followList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: UserTile(
                  followId: followList[index],
                  locationHeight: 20,
                ),
              );
            }),
      ),
    );
  }
}
