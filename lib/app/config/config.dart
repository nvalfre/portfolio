import 'package:flutter/material.dart';
import 'package:portfolio/app/config/app_text_config.dart';
import 'package:portfolio/app/config/space_config.dart';

class Config {

  static init(BuildContext context) {
    SpaceSizedBox.init();
    AppText.init();
  }
}
