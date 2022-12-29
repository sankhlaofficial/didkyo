import 'package:flutter/material.dart';

class StatsContainer extends StatelessWidget {
  const StatsContainer({
    Key? key,
    required this.size,
    required this.number,
    required this.factor,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final String number;
  final String factor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        width: size.width / 5,
        height: size.height / 11,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Text(
              number,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              factor,
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 15, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
