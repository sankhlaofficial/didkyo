import 'package:flutter/material.dart';

class ShadowContainer extends StatelessWidget {
  const ShadowContainer({Key? key, required this.child, required this.color})
      : super(key: key);
  final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        // border: Border.all(color: Colors.black, width: 1),
        boxShadow: const [
          BoxShadow(
              color: Colors.black,
              spreadRadius: 0.0,
              blurRadius: 0.0,
              offset: Offset(1.2, 1.5))
        ],
      ),
      child: child,
    );
  }
}
