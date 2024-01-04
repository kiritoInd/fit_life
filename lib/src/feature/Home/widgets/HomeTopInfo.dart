import 'package:fit_life/src/feature/Home/widgets/CounterWorkoutClock.dart';

import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeTopInfo extends StatelessWidget {
  const HomeTopInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          color: ColorsPallet.backgroundcolor,
          height: size.height * 0.19,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CounterWorkoutClock(
                    title: 'Total Workouts',
                    count: '0',
                    imagePath: ImageAssets.workout_img,
                  ),
                ],
              ),
              Container(
                width: size.width,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ColorsPallet.white,
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ("WEEK GAOL").text.bold.size(10).make(),
                        ("Set weekly goals for a better body shape")
                            .text
                            .sm
                            .bold
                            .size(1)
                            .color(Colors.grey)
                            .make(),
                      ],
                    ).p16(),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: ColorsPallet.backgroundcolor,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: ("SET A GOAL")
                            .text
                            .sm
                            .color(ColorsPallet.white)
                            .make(),
                      ),
                    ).pOnly(
                      top: 20,
                      bottom: 20,
                    )
                  ],
                ),
              )
            ],
          ).pOnly(
            left: 20,
            right: 20,
          ),
        ),
      ],
    );
  }
}
