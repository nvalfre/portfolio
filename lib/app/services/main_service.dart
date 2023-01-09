import 'package:flutter/cupertino.dart';
import 'package:portfolio/app/core/theme/cubit/theme_cubit.dart';
import 'package:portfolio/app/pages/sections/main/widgets/_main_stack.dart';

class MainViewService {
  Widget buildMainStack({required ThemeState state, required double height, required double width}) {
    return MainStack(state: state, height: height, width: width);
  }
}