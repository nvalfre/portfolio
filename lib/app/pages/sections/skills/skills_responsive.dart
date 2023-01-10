import 'package:flutter/material.dart';
import 'package:portfolio/app/core/responsive/responsive.dart';
import 'package:portfolio/app/pages/sections/skills/widgets/skills_default.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: SkillsDefault(),
      tablet: SkillsDefault(),
      desktop: SkillsDefault(),
    );
  }
}
