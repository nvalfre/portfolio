import 'package:flutter/material.dart';
import 'package:portfolio/app/config/links.dart';
import 'package:portfolio/app/core/util/constants.dart';

class ToolsIconsCarrousel extends StatelessWidget {
  const ToolsIconsCarrousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    const textAuthorPrefix = "Developed by ";
    const author = " Nicolas Valfre <3";
    const cr = " © 2023";

    return Container(
      margin: EdgeInsets.fromLTRB(0, height * 0.05, 0, 0),
      height: height * 0.07,
      width: width,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(textAuthorPrefix),
            InkWell(
              onTap: () => openURL(gitHub),
              child: const Text(
                author,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(cr),
          ],
        ),
      ),
    );
  }
}
