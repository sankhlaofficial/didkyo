import 'package:flutter/material.dart';

class VerfiedCheck extends StatelessWidget {
  const VerfiedCheck({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.4),
          color: Colors.yellow,
          boxShadow: const [
            BoxShadow(
                color: Colors.black,
                spreadRadius: 0.1,
                blurRadius: 0.1,
                offset: Offset(2, 2))
          ]),
      width: 30,
      height: 30,
      child: const Icon(
        Icons.check,
        color: Colors.black,
        size: 18,
      ),
    );
  }
}
