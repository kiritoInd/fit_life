import 'package:fit_life/src/feature/Home/View/Homepage.dart';
import 'package:fit_life/src/feature/ScreensPages/widgets/Loader.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return LoaderWidget(
      imagePath: ImageAssets.sc2,
      heading1: "Get Burn",
      heading2:
          "Let's keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
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
