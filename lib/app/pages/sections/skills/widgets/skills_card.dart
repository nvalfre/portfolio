import 'package:flutter/material.dart';
import 'package:portfolio/app/core/color/colors.dart';
import 'package:portfolio/app/core/color/gradient_colors.dart';
import 'package:portfolio/app/core/configs/configs.dart';
import 'package:portfolio/app/core/responsive/responsive.dart';
import 'package:portfolio/app/core/util/constants.dart';
import 'package:portfolio/app/domain/custom_card.dart';
import 'package:sizer/sizer.dart';

class SkillsCard extends StatefulWidget {
  final CustomCard skillCard;

  const SkillsCard({Key? key, required this.skillCard}) : super(key: key);
  @override
  SkillsCardState createState() => SkillsCardState();
}

class SkillsCardState extends State<SkillsCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      onHover: handleHover,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 0.5.w),
        width: width * 0.18,
        height: height * 0.1,
        decoration: BoxDecoration(
          gradient: isHover ? greenCyan : grayBack,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    widget.skillCard.icon,
                    height: height * 0.05,
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    widget.skillCard.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: isHover ? whiteColor : theme.textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.01),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handleHover(isHovering) {
      if (isHovering) {
        setState(() => isHover = true);
      } else {
        setState(() => isHover = false);
      }
    }
}
