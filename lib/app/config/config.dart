import 'package:flutter/material.dart';
import 'package:portfolio2/app/config/space_config.dart';

import 'app_text_config.dart';

class Config {

  static init(BuildContext context) {
    SpaceSizedBox.init();
    AppText.init();
  }
}