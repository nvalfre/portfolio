import 'package:flutter/material.dart';
import 'package:portfolio/app/config/links.dart';
import 'package:portfolio/app/config/strings.dart';
import 'package:portfolio/app/core/color/colors.dart';
import 'package:portfolio/app/core/color/gradient_colors.dart';
import 'package:portfolio/app/core/configs/configs.dart';
import 'package:portfolio/app/core/util/constants.dart';
import 'package:portfolio/app/pages/sections/contact/configs.dart';
import 'package:portfolio/app/pages/widgets/custom_text_heading.dart';
import 'package:sizer/sizer.dart';
import 'package:portfolio/app/config/space_config.dart';


class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: title),
          SpaceSizedBox.verticalSpace(1.w)!,
          const CustomSectionSubHeading(text: subtitle),
          SpaceSizedBox.verticalSpace(1.w)!,
          Container(
            padding: EdgeInsets.all(size.width * 0.05).copyWith(bottom: 10),
            decoration: BoxDecoration(
              gradient: theme.contactCard,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [blackColorShadow],
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contactHeading,
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        SpaceSizedBox.verticalSpace(1.w)!,
                        const Text(
                          contactSubHeading,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                        SpaceSizedBox.verticalSpace(1.w)!,
                        // SizedBox(height: AppDimensions.space(3)),
                      ],
                    ),
                    InkWell(
                      onTap: () => openURL(whatsapp),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                            gradient: buttonGradi,
                            // border: Border.all(
                            //     width: 2.0, color: theme.primaryColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          textButton,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: textColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(color: Colors.white.withOpacity(0.2), height: 1),
                SpaceSizedBox.verticalSpace(1.w)!,
                Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 50,
                    children: contactUtils
                        .asMap()
                        .entries
                        .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: IconButton(
                                icon: Image.network(
                                  e.value.icon,
                                  color: theme.textColor,
                                ),
                                onPressed: () => openURL(e.value.url),
                                highlightColor: Colors.white54,
                                iconSize: 24,
                              ),
                        ))
                        .toList()),
              ],
            ),
          ),
          // SpaceSizedBox.verticalSpace!,
        ],
      ),
    );
  }
}
