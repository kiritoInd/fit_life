import 'package:fit_life/src/feature/Home/widgets/MainAppbar.dart';
import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: CustomAppbar(
          title: "Exercises",
        ),
      ),
      body: ExerciseListView(),
    );
  }
}

class ExerciseListView extends StatelessWidget {
  ExerciseListView({Key? key}) : super(key: key);

  // Sample data for exercises
  final List<ExerciseItem> exercises = [
    ExerciseItem(
      image: ImageAssets.wr1,
      title: 'Push-ups',
      subtitle: 'Strength Training',
    ),
    ExerciseItem(
      image: ImageAssets.wr1,
      title: 'Running',
      subtitle: 'Cardio',
    ),
    ExerciseItem(
      image: ImageAssets.wr1,
      title: 'Yoga',
      subtitle: 'Flexibility',
    ),
    // Add more exercises as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: exercises.length,
      itemBuilder: (context, index) {
        return ExerciseTile(
          exercise: exercises[index],
        );
      },
    );
  }
}

class ExerciseItem {
  final String image;
  final String title;
  final String subtitle;

  ExerciseItem({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

class ExerciseTile extends StatelessWidget {
  final ExerciseItem exercise;

  const ExerciseTile({Key? key, required this.exercise}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: Container(
        color: Color(0xffFAFAFA),
        height: 60,
        child: Row(
          children: [
            Image.asset(
              exercise.image,
              width: 70,
              height: 60,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (exercise.title).text.bold.make(),
                (exercise.subtitle)
                    .text
                    .bold
                    .color(ColorsPallet.gray)
                    .sm
                    .make(),
              ],
            ).p8(),
          ],
        ),
      ),
    ).p12();
  }
}
