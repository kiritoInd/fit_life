import 'dart:ui'; // Import the 'ui' library for using the ImageFilter class.

import 'package:fit_life/src/feature/30daysprogram/views/ProgramPage.dart';

import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomListItem extends StatefulWidget {
  final String backgroundImage;
  final String title;
  final String subtitle;
  final double completionPercentage;
  final int daysLeft;

  const CustomListItem({
    Key? key,
    required this.backgroundImage,
    required this.title,
    required this.subtitle,
    required this.completionPercentage,
    required this.daysLeft,
  }) : super(key: key);

  @override
  _CustomListItemState createState() => _CustomListItemState();
}

class _CustomListItemState extends State<CustomListItem> {
  bool _isStarted = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!_isStarted) {
          _showStartWorkoutDialog(context);
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProgramPage(),
            ),
          );
        }
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(widget.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 0.2,
              sigmaY: 0.2,
            ),
            child: Container(
              height: 140,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.7),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ).pOnly(top: 10, left: 12, right: 12),
                  Text(
                    widget.subtitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                  ).pOnly(left: 12, right: 12),
                  _isStarted
                      ? Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  Text(
                                    '${widget.daysLeft} days left',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ).pOnly(bottom: 3),
                              LinearProgressIndicator(
                                value: widget.completionPercentage,
                                backgroundColor: Colors.grey,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  ColorsPallet.backgroundcolor,
                                ),
                              ),
                            ],
                          ).p12(),
                        )
                      : Container(
                          child: ("Start your 30 days program to stay fit")
                              .text
                              .color(ColorsPallet.white)
                              .capitalize
                              .bold
                              .sm
                              .make(),
                        ).pOnly(left: 12, bottom: 15, top: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _showStartWorkoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Start 30-day Workout?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _isStarted = true;
                            Navigator.of(context).pop();
                          });
                          // Navigate to the new page after starting the workout.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProgramPage(),
                            ),
                          );
                        },
                        child: const Text(
                          "Start",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}


        // title: Text(
        //     "Start 30-day Workout?",
        //     style: TextStyle(
        //       fontSize: 15,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        //   content: Text("Do you want to start this 30-day workout session?"),
        //   actions: [
        //     
        //   ],