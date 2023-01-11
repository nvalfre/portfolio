import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:portfolio/app/config/strings.dart';
import 'package:portfolio/app/config/app_text_config.dart';

List<AnimatedText> animatedText1 = [
  TyperAnimatedText(animationText1,
      speed: const Duration(milliseconds: 50),
      textStyle: AppText.h2!.copyWith(fontSize: 16))
];
List<AnimatedText> animatedText2 = [
  TyperAnimatedText(animationText2,
      speed: const Duration(milliseconds: 100),
      textStyle: AppText.h2!.copyWith(fontSize: 16))
];
List<AnimatedText> animatedText3 = [
  TyperAnimatedText(animationText3,
      speed: const Duration(milliseconds: 250),
      textStyle: AppText.h2!.copyWith(fontSize: 16))
];
