import 'package:flutter/material.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:portfolio/app/core/configs/configs.dart';
import 'package:portfolio/app/core/responsive/responsive.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Initicon(
      text: "N.  V.",
      style: TextStyle(
        fontSize: Responsive.isFontSize(context, 18),
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: Colors.cyan,
     // borderRadius: BorderRadius.circular(1),
    );
  }
}
