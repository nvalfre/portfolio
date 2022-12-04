import 'package:flutter/material.dart';

class AppText {
  static TextStyle? h1;
  static TextStyle? h1b;
  static TextStyle? h2;
  static TextStyle? h2b;
  static TextStyle? h3;
  static TextStyle? h3b;

  static void init() {
    const b = FontWeight.bold;
    const baseStyle = TextStyle();
    h1 = baseStyle.copyWith(fontSize: 22);
    h1b = h1!.copyWith(fontWeight: FontWeight.w600);

    h2 = baseStyle.copyWith(fontWeight: FontWeight.w400);
    h2b = h2!.copyWith(fontWeight: b);

    h3 = baseStyle.copyWith(fontWeight: FontWeight.w100);
    h3b = h3!.copyWith(fontWeight: FontWeight.w100);
  }
}
