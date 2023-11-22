import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CounterWorkoutClock extends StatelessWidget {
  final String title;
  final String count;
  final String imagePath;

  const CounterWorkoutClock({
    Key? key,
    required this.title,
    required this.count,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: 145,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            imagePath,
            width: 37,
            height: 40,
            fit: BoxFit.fitWidth,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title.text.sm.bold.color(ColorsPallet.textWhiteColor).make(),
              count.text.bold.color(ColorsPallet.textWhiteColor).make(),
            ],
          )
        ],
      ),
    );
  }
}
