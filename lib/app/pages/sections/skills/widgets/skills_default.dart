import 'package:flutter/material.dart';
import 'package:portfolio/app/config/links.dart';
import 'package:portfolio/app/config/strings.dart';
import 'package:portfolio/app/core/util/constants.dart';
import 'package:portfolio/app/pages/sections/skills/configs.dart';
import 'package:portfolio/app/pages/widgets/custom_text_heading.dart';
import 'package:sizer/sizer.dart';
import 'package:portfolio/app/config/space_config.dart';
import 'skills_card.dart';

class SkillsDefault extends StatefulWidget {
  const SkillsDefault({Key? key}) : super(key: key);

  @override
  State<SkillsDefault> createState() => _SkillsDefaultState();
}

class _SkillsDefaultState extends State<SkillsDefault> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var isNotEmpty = skillsUtils.isNotEmpty;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nSkills"),
          SpaceSizedBox.verticalSpace(1.w)!,
          const CustomSectionSubHeading(text: skillsSubHeading),
          if (isNotEmpty)
            Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              runSpacing: 1.5.w,
              children: skillsUtils
                  .asMap()
                  .entries
                  .map(
                    (e) => SkillsCard(skillCard: e.value),
                  )
                  .toList(),
            ),
          isNotEmpty ? Column(
            children: [
              SpaceSizedBox.verticalSpace(1.w)!,

              OutlinedButton(
                onPressed: () => openURL(gitHub),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'See More',
                    style: TextStyle(
                      fontSize: 12,
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
