import 'package:flutter/widgets.dart';
import 'package:utils_mb/src/utils/responsive.dart';

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
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

extension ResponsiveExtension on BuildContext {
  double hp(double percent) {
    final size = Responsive(this).hp(percent);
    return size;
  }

  double wp(double percent) {
    final size = Responsive(this).wp(percent);
    return size;
  }
}
