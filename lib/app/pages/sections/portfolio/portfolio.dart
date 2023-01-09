import 'package:flutter/material.dart';
import 'package:portfolio/app/core/responsive/responsive.dart';
import 'widgets/portfolio_desktop.dart';
import 'widgets/portfolio_mobile.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
