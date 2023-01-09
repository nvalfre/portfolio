import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio2/app/config/strings.dart';
import 'package:portfolio2/app/core/color/colors.dart';
import 'package:portfolio2/app/core/color/gradient_colors.dart';
import 'package:portfolio2/app/core/configs/configs.dart';
import 'package:portfolio2/app/core/responsive/responsive.dart';
import 'package:portfolio2/app/pages/sections/services/configs.dart';
import 'package:portfolio2/app/pages/widgets/custom_text_heading.dart';
import 'package:sizer/sizer.dart';

part 'widgets/services_desktop.dart';
part 'widgets/services_mobile.dart';
part 'widgets/_services_card.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ServiceMobile(),
      tablet: ServiceMobile(),
      desktop: ServiceDesktop(),
    );
  }
}
