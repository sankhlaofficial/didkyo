import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar(
      {required this.backgroundColor,
      required this.showTime,
      required this.margin,
      required this.shape,
      required this.behavior,
      Key? key,
      required super.content});
  final SnackBarBehavior behavior;
  final Color backgroundColor;
  final EdgeInsetsGeometry margin;
  final ShapeBorder shape;
  final Duration showTime;
  @override
  Widget build(BuildContext context) {
    return SnackBar(
        duration: showTime,
        behavior: behavior,
        backgroundColor: backgroundColor,
        shape: shape,
        margin: margin,
        content: content);
  }
}
