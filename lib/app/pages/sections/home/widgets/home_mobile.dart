import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/config/img.dart';
import 'package:portfolio/app/config/links.dart';
import 'package:portfolio/app/config/strings.dart';
import 'package:portfolio/app/core/animations/entrance_fader.dart';
import 'package:portfolio/app/core/animations/zoom_animation.dart';
import 'package:portfolio/app/config/app_text_config.dart';
import 'package:portfolio/app/config/space_config.dart';
import 'package:portfolio/app/core/color/colors.dart';
import 'package:portfolio/app/core/color/gradient_colors.dart';
import 'package:portfolio/app/core/responsive/responsive.dart';
import 'package:portfolio/app/core/util/constants.dart';
import 'package:portfolio/app/pages/widgets/color_chage_btn.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;

import 'animation_text.dart';

const summaryScore = "-> ";

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                helloMicroTag,
                style: AppText.h2!
                    .copyWith(fontSize: Responsive.isFontSize(context, 28)),
              ),
              // Space.x!,
              Image.asset(StaticImage.hi, height: 12.sp),
            ],
          ),
          // SpaceSizedBox.verticalSpace(1.w)!,
          Text(
            iam,
            style: TextStyle(
              fontSize: Responsive.isFontSize(context, 28),
              fontWeight: FontWeight.w600,
            ),
          ),
          SpaceSizedBox.verticalSpace(1.w)!,
          Text(
            degree,
            style: TextStyle(
              fontSize: Responsive.isFontSize(context, 20),
              fontWeight: FontWeight.w500,
            ),
          ),
          SpaceSizedBox.verticalSpace(1.w)!,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                summaryScore,
                style: TextStyle(
                  fontSize: Responsive.isFontSize(context, 18),
                  fontWeight: FontWeight.w400,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: animatedText1,
                isRepeatingAnimation: false,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                summaryScore,
                style: TextStyle(
                  fontSize: Responsive.isFontSize(context, 18),
                  fontWeight: FontWeight.w400,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: animatedText2,
                isRepeatingAnimation: false,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                summaryScore,
                style: TextStyle(
                  fontSize: Responsive.isFontSize(context, 18),
                  fontWeight: FontWeight.w400,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: animatedText3,
                isRepeatingAnimation: false,
              ),
            ],
          ),

          SpaceSizedBox.verticalSpace(1.w)!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => openURL(resume),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  decoration: BoxDecoration(
                      gradient: buttonGradi,
                      // border: Border.all(
                      //     width: 2.0, color: theme.primaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'download cv',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: textColor,
                    ),
                  ),
                ),
              ),
              const EntranceFader(
                offset: Offset(0, 0),
                delay: Duration(seconds: 1),
                duration: Duration(milliseconds: 800),
                child: ZoomAnimations(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
