import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.state,
    required this.width,
    required this.height,
  });

  final dynamic state;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    const darkBackground = 'assets/imgs/background-dm.gif';
    const whiteBackground = 'assets/imgs/background-wm.gif';
    const opacity = 0.3;
    if (!state.isDarkThemeOn) {
      return Align(
        alignment: Alignment.center,
        child: Image.asset(
          darkBackground,
          opacity: const AlwaysStoppedAnimation<double>(opacity),
          width: width,
          height: height,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      );
    }

    return Align(
      alignment: Alignment.center,
      // BG01.png
      child: Image.asset(
        whiteBackground,
        opacity: const AlwaysStoppedAnimation<double>(opacity),
        width: width,
        height: height,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    );
  }
}
