import 'package:flutter/material.dart';
import 'package:portfolio/app/pages/sections/contact/contact.dart';
import 'package:portfolio/app/pages/sections/home/home.dart';
import 'package:portfolio/app/pages/sections/portfolio/portfolio.dart';
import 'package:portfolio/app/pages/sections/services/services.dart';
import 'package:portfolio/app/pages/widgets/footer.dart';

class BodyScrollViews {
  static const List<Widget> views = [
    HomePage(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
