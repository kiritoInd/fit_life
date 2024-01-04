import 'package:fit_life/src/feature/Exersices/views/ExerciseDetailPage.dart';
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
      image: ImageAssets.wr2,
      title: 'Push-ups',
      subtitle: 'Strength Training',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr3,
      title: 'Sit-ups',
      subtitle: 'Cardio',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr4,
      title: 'DeadLift',
      subtitle: 'Strength Training',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr5,
      title: 'Squats',
      subtitle: 'Strength Training',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr6,
      title: 'Duck-Walk',
      subtitle: 'Cardio',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr7,
      title: 'Glute Bridges',
      subtitle: 'Glute',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr8,
      title: 'Jumping-Jacks',
      subtitle: 'Flexibility , Cardio',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr2,
      title: 'Push-ups',
      subtitle: 'Strength Training',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr3,
      title: 'Sit-ups',
      subtitle: 'Cardio',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr4,
      title: 'DeadLift',
      subtitle: 'Strength Training',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr5,
      title: 'Squats',
      subtitle: 'Strength Training',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr6,
      title: 'Duck-Walk',
      subtitle: 'Cardio',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr7,
      title: 'Glute Bridges',
      subtitle: 'Glute',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
    ExerciseItem(
      image: ImageAssets.wr8,
      title: 'Jumping-Jacks',
      subtitle: 'Flexibility , Cardio',
      steps:
          '1. Starting Position: Begin by positioning yourself face down on the floor. Place your hands slightly wider than shoulder-width apart. Extend your legs straight behind you with your toes on the floor. 2. Body Alignment: Keep your body in a straight line from head to heels. Engage your core muscles to maintain a neutral spine. 3. Hand Placement: Position your hands at shoulder level with your fingers pointing forward. Your palms should be flat on the floor. 4. Lowering Phase: Lower your body towards the floor by bending your elbows Keep your elbows close to your body at about a 45-degree angle. Lower your chest until it almost touches the ground. 5. Chest Close to the Ground: Make sure your chest is just above or lightly touches the ground. Avoid letting your chest sag or your lower back arch. 6. Pushing Phase: Push through your palms to straighten your arms. Fully extend your elbows to lift your body back to the starting position. 7. Complete the Repetition: Repeat the lowering and pushing phases to complete one repetition. Aim for a full range of motion while maintaining proper form.',
      mistakesToAvoid:
          "Arching the back: Keep your body straight; don't let your lower back sag. Elbows flare out: Keep your elbows at a 45-degree angle to your body. Incomplete range of motion: Lower your chest close to the ground for each repetition. Holding your breath: Remember to breathe throughout the exercise.",
      tips:
          "Breathe in as you lower your body and exhale as you push up. Keep your neck in a neutral position, looking at a spot on the floor. If regular push-ups are challenging, you can start with modified push-ups on your knees until you build strength.",
    ),
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
  final String steps;
  final String tips;
  final String mistakesToAvoid;

  ExerciseItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.steps,
    required this.tips,
    required this.mistakesToAvoid,
  });
}

class ExerciseTile extends StatelessWidget {
  final ExerciseItem exercise;

  const ExerciseTile({Key? key, required this.exercise}) : super(key: key);

  void _onTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ExerciseDetailPage(
          exerciseDetails: ExerciseDetails(
            image: exercise.image,
            title: exercise.title,
            subtitle: exercise.subtitle,
            steps: decodeSteps(exercise.steps),
            tips: exercise.tips,
            mistakesToAvoid: exercise.mistakesToAvoid,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      child: InkWell(
        onTap: () => _onTap(context),
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
      ),
    ).pOnly(top: 10, bottom: 10);
  }
}
