import 'package:flutter/material.dart';
import 'package:portfolio/app/pages/sections/contact/contact_responsive.dart';
import 'package:portfolio/app/pages/sections/home/home_responsive.dart';
import 'package:portfolio/app/pages/sections/skills/skills_responsive.dart';
import 'package:portfolio/app/pages/sections/portfolio/portfolio_responsive.dart';
import 'package:portfolio/app/pages/sections/services/services_responsive.dart';
import 'package:portfolio/app/pages/sections/footer/footer.dart';

class BodyScrollViews {
  static const List<Widget> views = [
    HomePage(),
    Skills(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
