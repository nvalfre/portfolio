import 'package:flutter/material.dart';
import 'package:portfolio2/app/core/responsive/responsive.dart';

import 'widgets/contact_desktop.dart';
import 'widgets/contact_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
