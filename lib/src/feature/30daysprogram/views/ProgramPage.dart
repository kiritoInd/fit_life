import 'dart:math';

import 'package:fit_life/src/feature/Exersices/views/ExercisesPage.dart';
import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velocity_x/velocity_x.dart';

class ProgramPage extends StatefulWidget {
  const ProgramPage({Key? key}) : super(key: key);

  @override
  _ProgramPageState createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  late int currentDay;
  late SharedPreferences prefs;
  List<bool> dayCompletionStatus = List.generate(30, (index) => false);
  bool isCompletedButtonVisible = true;

  Future<void> resetCompletionStatus() async {
    DateTime now = DateTime.now();
    currentDay = now.day;

    // Check if it's a new day (after 12 pm)
    if (now.hour >= 12 && !prefs.containsKey('lastResetDay')) {
      prefs.setInt('lastResetDay', currentDay);

      // Reset completion status for all days up to the current day
      setState(() {
        dayCompletionStatus =
            List.generate(30, (index) => index + 1 <= currentDay);
        isCompletedButtonVisible = true;
      });
    }
  }

  bool isDayCompleted(int day) {
    return dayCompletionStatus[day - 1];
  }

  @override
  void initState() {
    super.initState();
    initSharedPreferences();
  }

  Future<void> initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    await resetCompletionStatus();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: ("CHALLENGE").text.xl.size(18).bold.make(),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 16),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: List.generate(
                30,
                (index) => Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey),
                    color: dayCompletionStatus[index]
                        ? Color.fromARGB(255, 0, 158, 37)
                        : Colors.grey,
                  ),
                  child: Center(
                    child: Text(
                      (index + 1).toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ("Daily Task").text.xl.color(ColorsPallet.black).bold.make(),
                Container(
                  height: size.height * 0.5,
                  child: ListView.builder(
                    itemCount: exercises.length,
                    itemBuilder: (context, index) {
                      return ExerciseTile(
                        exercise: exercises[index],
                      );
                    },
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Set completion status for all days up to the current day
                    setState(() {
                      dayCompletionStatus =
                          List.generate(30, (index) => index + 4 <= currentDay);
                      isCompletedButtonVisible = false;
                    });

                    // Schedule the function to reset completion status after 12 pm
                    scheduleResetCompletionStatus();
                  },
                  child: Material(
                    elevation: 1,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black12,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: isCompletedButtonVisible
                          ? ("MARK AS COMPLETED").text.bold.make()
                          : ("COMPLETED").text.bold.make(),
                    ),
                  ),
                ).pOnly(top: 10),
              ],
            ).pOnly(top: 20, bottom: 10),
          ],
        ),
      ),
    );
  }

  void scheduleResetCompletionStatus() {
    // Schedule the reset function to run after 12 pm
    DateTime now = DateTime.now();
    DateTime resetTime = DateTime(now.year, now.month, now.day, 12, 0);
    if (now.isBefore(resetTime)) {
      Duration delay = resetTime.difference(now);
      Future.delayed(delay, () {
        setState(() {
          isCompletedButtonVisible = true;
        });
        resetCompletionStatus();
      });
    }
  }
}

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
];
