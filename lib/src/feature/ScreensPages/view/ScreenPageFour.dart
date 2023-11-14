import 'package:fit_life/src/feature/Home/View/Homepage.dart';
import 'package:fit_life/src/feature/ScreensPages/widgets/Loader.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  const ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return LoaderWidget(
      imagePath: ImageAssets.sc2,
      heading1: "Improve Sleep Quality",
      heading2:
          "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    );
  }
}
