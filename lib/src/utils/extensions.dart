import 'package:flutter/widgets.dart';
import 'package:utils_mb/src/utils/responsive.dart';

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }

  String lowcase() {
    final text = this;
    return text.toLowerCase();
  }

  String uppercase() {
    final text = this;
    return text.toUpperCase();
  }

  String splitFirst([String rex = ' ']) {
    final text = this;
    return text.split(rex).first;
  }

  String splitLast([String rex = ' ']) {
    final text = this;
    return text.split(rex).last;
  }

  String deleteRegexSpace() {
    RegExp regex = RegExp(r'\s+');
    final text = this;
    return text.replaceAll(regex, ' ').trim();
  }

  String separatedLastName() {
    final text = this;
    final condition = text.trim().contains(' ');
    if (condition) {
      return text.split(' ')[0];
    } else {
      return text;
    }
  }
}

extension WidgetExtension on Widget {
  Padding padding(EdgeInsets padding) {
    return Padding(
      padding: padding,
      child: this,
    );
  }
}


extension DoubleExtension on BuildContext {
  double wp(int? v){
    final double width = MediaQuery.of(this).size.width;
    if (v != null) {
     return width * v / 100;
    }
    return width;
  }

  double hp(int? v){
    final double height = MediaQuery.of(this).size.height;
    if (v != null) {
      return height * v / 100;
    }
    return height;
  }
}
