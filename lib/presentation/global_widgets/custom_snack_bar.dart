import 'package:flutter/material.dart';

class CustomSnackBar extends SnackBar {
  CustomSnackBar(
      {required this.backgroundColor,
      required this.margin,
      required this.shape,
      required this.behavior,
      Key? key,
      required super.content});
  final SnackBarBehavior behavior;
  final Color backgroundColor;
  final EdgeInsetsGeometry margin;
  final ShapeBorder shape;
  @override
  Widget build(BuildContext context) {
    return SnackBar(
        behavior: behavior,
        backgroundColor: backgroundColor,
        shape: shape,
        margin: margin,
        content: content);
  }
}
