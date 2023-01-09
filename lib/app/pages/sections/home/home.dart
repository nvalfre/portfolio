import 'package:flutter/material.dart';
import 'package:portfolio2/app/core/responsive/responsive.dart';
import 'widgets/home_desktop.dart';
import 'widgets/home_mobile.dart';
import 'widgets/home_tablet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
