import 'package:didkyo/presentation/global_widgets/shadow_container.dart';
import 'package:flutter/material.dart';

class TrendingCardsGrid extends StatelessWidget {
  const TrendingCardsGrid({Key? key, required this.trendingData})
      : super(key: key);
  final Map trendingData;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: trendingData.keys.toList().length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1),
        itemBuilder: (context, index) {
          return InkWell(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              child: ShadowContainer(
                color: Colors.white,
                child: Container(
                  width: 80,
                  height: 150,
                  decoration: BoxDecoration(
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
        });
  }
}
