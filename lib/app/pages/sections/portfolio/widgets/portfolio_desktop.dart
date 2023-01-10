import 'package:flutter/material.dart';
import 'package:portfolio/app/config/links.dart';
import 'package:portfolio/app/config/strings.dart';
import 'package:portfolio/app/core/util/constants.dart';
import 'package:portfolio/app/pages/sections/portfolio/configs.dart';
import 'package:portfolio/app/pages/widgets/custom_text_heading.dart';
import 'package:sizer/sizer.dart';
import 'package:portfolio/app/config/space_config.dart';
import 'project_card.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({Key? key}) : super(key: key);

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var isNotEmpty = projectUtils.isNotEmpty;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nProjects"),
          SpaceSizedBox.verticalSpace(1.w)!,
          const CustomSectionSubHeading(text: portfolioSubHeading),
          SpaceSizedBox.verticalSpace(2.w)!,
          if (isNotEmpty)
            Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              runSpacing: 3.w,
              children: projectUtils
                  .asMap()
                  .entries
                  .map(
                    (e) => ProjectCard(project: e.value),
                  )
                  .toList(),
            ),
          isNotEmpty ? Column(
            children: [
              SpaceSizedBox.verticalSpace(3.w)!,

              OutlinedButton(
                onPressed: () => openURL(gitHub),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ) : inProgressLabel(wipTag),
        ],
      ),
    );
  }

  Widget inProgressLabel(String tag) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
            children: [
              const CircularProgressIndicator(),
              Text(tag,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w100,
                  )),
            ],
          ),
    );
  }
}
