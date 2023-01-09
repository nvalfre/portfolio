import 'package:flutter/material.dart';

import 'config.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= widthMinThreshold2;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < widthMaxThreshold &&
      MediaQuery.of(context).size.width >= widthMinThreshold;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= widthMaxThreshold;

  static double isFontSize(BuildContext context, double val) {
    double width = MediaQuery.of(context).size.width;
    if (width >= widthMaxThreshold) {
      return val * normalScale;
    } else if (width < widthMaxThreshold && width >= widthMinThreshold) {
      return val * reducedScale;
    }

    return val * midScale;
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return getDeviceWidget(width);
  }

  Widget getDeviceWidget(double width) {
    if (width >= widthMaxThreshold) {
      return desktop;
    } else if (width < widthMaxThreshold && width >= widthMinThreshold) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
