import 'package:fit_life/src/feature/Login/Widgets/round_button.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Home/View/Homepage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(children: [
            SizedBox(
              height: media.width * 0.3,
            ),
            Image.asset(ImageAssets.welcomepage),
            SizedBox(
              height: media.width * 0.08,
            ),
            Text(
              "Welcome",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff1d1517),
                height: 30 / 20,
              ),
            ),
            Text(
              "Let’s reach your goals together with us",
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff7b6f72),
                height: 36 / 12,
              ),
            ),
            Spacer(),
            RoundButton(
                title: "Go to Home",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
            SizedBox(
              height: 30,
            ),
          ]),
        ),
      ),
    );
  }
}
