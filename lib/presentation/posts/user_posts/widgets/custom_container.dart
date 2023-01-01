import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key, required this.containerChild, required this.containerColor});
  final Widget containerChild;
  final Color containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2),
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        color: containerColor,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: containerChild,
    );
  }
}
