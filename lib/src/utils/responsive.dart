import 'package:flutter/material.dart';

class Responsive {
  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    _width = size.width;
    _height = size.height;
  }

  late double _width, _height;

  double get width => _width;
  double get height => _height;

  static Responsive of(BuildContext context) => Responsive(context);

  double hp(double percent) => _height * percent / 100;
  double wp(double percent) => _width * percent / 100;
}