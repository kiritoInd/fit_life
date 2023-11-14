import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class LoaderWidget extends StatelessWidget {
  final String imagePath;
  final String heading1;
  final String heading2;
  final VoidCallback onPressed;

  const LoaderWidget({
    super.key,
    required this.imagePath,
    required this.heading1,
    required this.heading2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imagePath,
              width: size.width,
              height: size.height * 0.59,
              fit: BoxFit.fitHeight,
            ), // Adjust height as needed
            Container(
              height: size.height * 0.41,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading1,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ).pOnly(top: 10),
                  Text(
                    heading2,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ).pOnly(top: 20),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorsPallet.backgroundcolor,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: onPressed,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ).pOnly(left: 30, right: 30, bottom: 30, top: 30),
            ),
          ],
        ),
      ),
    );
  }
}
