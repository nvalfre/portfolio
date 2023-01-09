import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio2/app/config/app_text_config.dart';
import 'package:portfolio2/app/config/strings.dart';

List<TyperAnimatedText> tabList = [
  TyperAnimatedText(animationText1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 20)),
  TyperAnimatedText(animationText2,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 20)),
  TyperAnimatedText(animationText3,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 20))
];
List<TyperAnimatedText> mobileList = [
  TyperAnimatedText(animationText1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 16)),
  TyperAnimatedText(animationText2,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 16)),
  TyperAnimatedText(animationText3,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 16))
];
