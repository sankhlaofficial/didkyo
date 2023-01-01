import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar({Key? key, required super.content});

  @override
  Widget build(BuildContext context) {
    return SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        margin: const EdgeInsets.all(30),
        content: content);
  }
}
