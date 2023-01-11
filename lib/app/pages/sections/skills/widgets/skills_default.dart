import 'package:flutter/material.dart';
import 'package:portfolio/app/config/strings.dart';
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
    var sizedBox = SpaceSizedBox.verticalSpace(1.w)!;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 8),
      child: Column(
        children: [
          const CustomSectionHeading(text: "\nSkills"),
          sizedBox,
          const CustomSectionSubHeading(text: skillsSubHeading),
          sizedBox,
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
        ],
      ),
    );
  }
}
