import 'dart:ui'; // Import the 'ui' library for using the ImageFilter class.

import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomListItem extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage(backgroundImage),
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
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ).pOnly(top: 10, left: 12, right: 12),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ).pOnly(left: 12, right: 12),
                Container(
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
                            color: ColorsPallet.white,
                            size: 15,
                          ),
                          Text(
                            '$daysLeft days left',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ).pOnly(bottom: 3),
                      LinearProgressIndicator(
                        value: completionPercentage,
                        backgroundColor: Colors.grey,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          ColorsPallet.backgroundcolor,
                        ),
                      ),
                    ],
                  ).p12(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
