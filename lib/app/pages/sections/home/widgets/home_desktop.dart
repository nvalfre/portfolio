import 'package:portfolio/app/config/img.dart';
import 'package:portfolio/app/config/links.dart';
import 'package:portfolio/app/config/strings.dart';
import 'package:portfolio/app/core/animations/zoom_animation.dart';
import 'package:portfolio/app/core/responsive/responsive.dart';
import 'package:portfolio/app/pages/sections/home/widgets/animation_text.dart';
import 'package:portfolio/app/pages/widgets/color_chage_btn.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/animations/entrance_fader.dart';
import 'package:portfolio/app/core/configs/configs.dart';
import 'package:portfolio/app/config/app_text_config.dart';
import 'package:portfolio/app/config/space_config.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SizedBox(
      height: 40.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.h),
              width: 55.w,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(helloTag,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w100,
                          )),
                      EntranceFader(
                        offset: const Offset(0, 0),
                        delay: const Duration(milliseconds: 1500),
                        duration: const Duration(milliseconds: 800),
                        child: Image.asset(StaticImage.hi, height: 40),
                      ),
                    ],
                  ),
                  SpaceSizedBox.verticalSpace(0.5.w)!,
                  const Text(iam,
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                      )),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(" -> ",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: animatedText1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(" -> ",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: animatedText2,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(" -> ",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w400,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: animatedText3,
                        ),
                      ),
                    ],
                  ),
                  SpaceSizedBox.verticalSpace(1.5.w)!,
                  Padding(
                    padding: EdgeInsets.only(right: 10.w),
                    child: Text(miniDescription,
                        style: TextStyle(
                          fontSize: Responsive.isFontSize(context, 20),
                          fontWeight: FontWeight.w400,
                          color: theme.textColor.withOpacity(0.6),
                        )),
                  ),
                  SpaceSizedBox.verticalSpace(3.w)!,
                  ColorChageButton(
                    text: 'download cv',
                    onTap: () {
                      html.window.open(resume, "pdf");
                    },
                  ),
                ],
              ),
            ),
            const ZoomAnimations(),
          ],
        ),
      ),
    );
  }
}
