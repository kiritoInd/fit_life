import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  final autoimplyleadingf;

  const CustomAppbar({
    Key? key,
    required this.title,
    this.autoimplyleadingf = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: autoimplyleadingf,
      iconTheme: IconThemeData(
        color: Colors.white, // Change the color to your desired color
      ),
      backgroundColor: ColorsPallet.backgroundcolor,
      title: title.text.bold.color(Colors.white).make(),
      actions: [
        IconButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => WelcomePage(),
            //   ),
            // );
          },
          icon: Icon(
            CupertinoIcons.square_grid_2x2,
            color: ColorsPallet.textWhiteColor,
          ),
        )
      ],
    );
  }
}
