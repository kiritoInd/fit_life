import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ExerciseDetails {
  final String image;
  final String title;
  final String subtitle;
  final String steps;
  final String tips;
  final String mistakesToAvoid;

  ExerciseDetails({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.steps,
    required this.tips,
    required this.mistakesToAvoid,
  });
}

class ExerciseDetailPage extends StatelessWidget {
  final ExerciseDetails exerciseDetails;

  const ExerciseDetailPage({
    Key? key,
    required this.exerciseDetails,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(exerciseDetails.title),
      ),
      body: Container(
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                exerciseDetails.image,
                width: 350,
                height: 300,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  (exerciseDetails.title)
                      .text
                      .xl
                      .size(20)
                      .bold
                      .make()
                      .pOnly(top: 5, bottom: 10),
                  ("Steps :").text.xl.bold.make().pOnly(top: 5, bottom: 10),
                  Text(
                    decodeSteps(exerciseDetails.steps),
                    style: TextStyle(fontSize: 14),
                  ),
                  ("Tips :").text.xl.bold.make().pOnly(top: 15, bottom: 10),
                  decodeStepsDot(exerciseDetails.tips).text.make(),
                  ("Mistakes To Avoid :")
                      .text
                      .xl
                      .bold
                      .make()
                      .pOnly(top: 15, bottom: 10),
                  decodeStepsDot(exerciseDetails.mistakesToAvoid).text.make(),
                ],
              ).p16()
            ],
          ),
        ),
      ),
    );
  }
}

String decodeSteps(String steps) {
  List<String> decodedSteps = steps.split(RegExp(r'(?=\d\.)'));

  decodedSteps.removeWhere((step) => step.trim().isEmpty);

  return decodedSteps.join('\n');
}

String decodeStepsDot(String steps) {
  List<String> decodedSteps = steps.split('.');

  decodedSteps.removeWhere((step) => step.trim().isEmpty);

  // Add step notation
  for (int i = 0; i < decodedSteps.length; i++) {
    decodedSteps[i] = '${i + 1}. ${decodedSteps[i].trim()}';
  }

  // Join the steps with line breaks
  return decodedSteps.join('\n\n');
}
