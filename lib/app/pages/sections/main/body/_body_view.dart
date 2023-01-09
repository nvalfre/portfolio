import 'package:flutter/material.dart';
import 'package:portfolio2/app/pages/sections/contact/contact.dart';
import 'package:portfolio2/app/pages/sections/home/home.dart';
import 'package:portfolio2/app/pages/sections/services/services.dart';
import 'package:portfolio2/app/pages/widgets/footer.dart';

class BodyScrollViews {
  static const List<Widget> views = [
    HomePage(),
    Services(),
    Contact(),
    Footer(),
  ];
}
