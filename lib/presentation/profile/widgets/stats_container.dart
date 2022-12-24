import 'package:flutter/material.dart';

class StatsContainer extends StatelessWidget {
  const StatsContainer({
    Key? key,
    required this.size,
    required this.number,
    required this.factor,
  }) : super(key: key);

  final Size size;
  final String number;
  final String factor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: size.width / 3.5,
      height: size.height / 11,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 0.1,
                blurRadius: 0.1,
                offset: Offset(2, 2))
          ]),
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
    );
  }
}
