import 'package:fit_life/src/ScreensPages/view/ScreenPageFour.dart';
import 'package:fit_life/src/ScreensPages/widgets/Loader.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return LoaderWidget(
      imagePath: ImageAssets.sc3,
      heading1: "Eat Well",
      heading2:
          "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenFour(),
          ),
        );
      },
    );
  }
}
