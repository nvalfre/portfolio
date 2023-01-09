import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/color/colors.dart';
import 'package:portfolio/app/pages/sections/main/body/_body.dart';
import 'package:portfolio/app/pages/widgets/arrow_on_top.dart';

import '_background.dart';

class MainStack extends StatelessWidget {
  const MainStack({
    super.key,
    required this.state,
    required this.height,
    required this.width,
  });

  final dynamic state;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: height * 0.2,
          left: -88,
          child: Container(
            height: height / 3,
            width: 166,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: secondaryColor,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
              child: Container(
                height: 166,
                width: 166,
                color: Colors.transparent,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: -100,
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: primaryColor.withOpacity(0.5),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 500,
                sigmaY: 500,
              ),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.transparent,
              ),
            ),
          ),
        ),
        Background(state: state, width: width, height: height),
        const Body(),
        const ArrowOnTop()
      ],
    );
  }
}