import 'package:fit_life/src/feature/ScreensPages/view/ScreenPageTwo.dart';
import 'package:fit_life/src/feature/ScreensPages/widgets/Loader.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return LoaderWidget(
      imagePath: ImageAssets.sc1,
      heading1: "Track Your Goal",
      heading2:
          "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenTwo(),
          ),
        );
      },
    );
  }
}
