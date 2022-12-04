import 'package:flutter/material.dart';

class SpaceSizedBox {
  static SizedBox? horizontalSpace(double no) => SizedBox(width: no);

  static SizedBox? verticalSpace(double no) => SizedBox(height: no);

  static SizedBox? x50;
  static Expanded? expandedInf;

  static void init() {
    x50 = const SizedBox(width: 50);
    expandedInf = const Expanded(child: SizedBox(width: double.infinity));
  }
}
