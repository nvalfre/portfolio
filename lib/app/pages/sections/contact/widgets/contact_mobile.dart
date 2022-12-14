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

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        SpaceSizedBox.verticalSpace(10.w)!,
        const CustomSectionHeading(text: contactHeading),
        SpaceSizedBox.verticalSpace(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: const CustomSectionSubHeading(text: contactSubHeading),
        ),
        SpaceSizedBox.verticalSpace(5.w)!,
        InkWell(
          onTap: () => openURL(whatsapp),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            decoration: BoxDecoration(
                gradient: buttonGradi, borderRadius: BorderRadius.circular(10)),
            child: const Text(
              textButton,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: blackColor,
              ),
            ),
          ),
        ),
        SpaceSizedBox.verticalSpace(10.w)!,
        Wrap(
            alignment: WrapAlignment.center,
            runSpacing: 50,
            children: contactUtils
                .asMap()
                .entries
                .map((e) => IconButton(
                      icon: Image.network(
                        e.value.icon,
                        color: theme.textColor,
                      ),
                      onPressed: () => openURL(e.value.url),
                      highlightColor: Colors.white54,
                      iconSize: 21,
                    ))
                .toList()),
        SpaceSizedBox.verticalSpace(5.w)!,
        Container(color: Colors.white.withOpacity(0.2), height: 1),
      ],
    );
  }
}
