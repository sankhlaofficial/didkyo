import 'dart:developer';

import 'package:didkyo/presentation/global_widgets/shadow_container.dart';
import 'package:didkyo/presentation/posts/location_posts/location_posts_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrendingCardsGrid extends StatelessWidget {
  const TrendingCardsGrid({Key? key, required this.trendingData})
      : super(key: key);
  final Map trendingData;
  static const List cardColors = [
    Color(0xffFFD9C0),
    Color(0xffF4BFBF),
    Color(0xffCCF3EE),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GridView.builder(
          itemCount: trendingData.keys.toList().length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                log(trendingData.keys.toList()[index]);
                Get.to(() => LocationPostsPage(
                    selectedLocation: trendingData.keys.toList()[index]));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                child: ShadowContainer(
                  color: cardColors[0],
                  child: Container(
                    width: 40,
                    height: 100,
                    decoration: BoxDecoration(
                        color: cardColors[0],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(trendingData.keys.toList()[index]),
                          const SizedBox(
                            height: 20,
                          ),
                          Text('${trendingData.values.toList()[index]} posts'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
