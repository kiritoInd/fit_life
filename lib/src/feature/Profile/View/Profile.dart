import 'package:fit_life/src/feature/Home/widgets/MainAppbar.dart';
import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0),
        child: CustomAppbar(
          title: "ME",
        ),
      ),
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Material(
              elevation: 1,
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ("SETTINGS").text.semiBold.xl.make().pOnly(bottom: 10),
                    CustomButtonIcon(
                      icon: Icons.face_retouching_natural_sharp,
                      textcolor: Colors.amber,
                      text: "Profile",
                      onTap: () {
                        // Your onTap logic here
                      },
                    ),
                    Divider(),
                    CustomButtonIcon(
                      icon: Icons.bed_sharp,
                      text: "Workout Settings",
                      textcolor: Colors.lightGreenAccent,
                      onTap: () {
                        // Your onTap logic here
                      },
                    ),
                    Divider(),
                    CustomButtonIcon(
                      icon: Icons.settings,
                      text: "General Settings",
                      textcolor: Colors.lightBlue,
                      onTap: () {
                        // Your onTap logic here
                      },
                    ),
                    Divider(),
                    CustomButtonIcon(
                      icon: CupertinoIcons.book,
                      text: "Language Settings",
                      textcolor: Colors.indigoAccent,
                      onTap: () {
                        // Your onTap logic here
                      },
                    ),
                    Divider(),
                  ],
                ).p12(),
              ),
            ),
            Material(
              elevation: 1,
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomButtonIcon(
                      icon: Icons.credit_card_off_sharp,
                      text: "Remove Ads",
                      textcolor: Colors.black45,
                      onTap: () {
                        // Your onTap logic here
                      },
                    ),
                    Divider(),
                    CustomButtonIcon(
                      icon: Icons.star,
                      text: "Rate Us",
                      textcolor: Colors.black45,
                      onTap: () {
                        // Your onTap logic here
                      },
                    ),
                    Divider(),
                    CustomButtonIcon(
                      icon: Icons.book,
                      text: "Common Questions",
                      textcolor: Colors.black45,
                      onTap: () {
                        // Your onTap logic here
                      },
                    ),
                    Divider(),
                    CustomButtonIcon(
                      icon: CupertinoIcons.rectangle_grid_1x2,
                      text: "Feedback",
                      onTap: () {
                        // Your onTap logic here
                      },
                      textcolor: Colors.black45,
                    ),
                    Divider(),
                  ],
                ).p12(),
              ),
            )
          ],
        ).p16(),
      ),
    );
  }
}

class CustomButtonIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final Color textcolor;

  const CustomButtonIcon(
      {Key? key,
      required this.icon,
      required this.text,
      required this.onTap,
      required this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            icon,
            size: 35,
            color:
                textcolor, // You can customize the color or make it a parameter
          ).pOnly(left: 0),
          Text(
            text,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight
                    .bold), // You can customize the style or make it a parameter
          ).pOnly(left: 20),
          Spacer(),
        ],
      ).pOnly(top: 10),
    );
  }
}
