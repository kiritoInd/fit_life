import 'package:fit_life/src/feature/Login/Widgets/round_button.dart';
import 'package:fit_life/src/feature/ScreensPages/view/WelcomePage.dart';
import 'package:fit_life/src/res/color_Pallet.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250.0), // Set your custom height here
        child: AppBar(
          backgroundColor: ColorsPallet.backgroundcolor,
          flexibleSpace: Column(
            children: [
              SizedBox(
                height: media.width * 0.03,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'FitLIFE',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: ColorsPallet.white,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                    Image.asset(
                      ImageAssets.menu,
                      height: 16,
                      width: 16,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageAssets.workout_img,
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'WorkOUT',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: ColorsPallet.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                      Text(
                        '5',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: ColorsPallet.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Image.asset(
                    ImageAssets.clock,
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Minute',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: ColorsPallet.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                      Text(
                        '75',
                        style: TextStyle(
                          fontSize: 17.0,
                          color: ColorsPallet.white,
                          fontFamily: GoogleFonts.poppins().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                      color: ColorsPallet.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Week Goal',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: ColorsPallet.black,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                            Text(
                              'Set weekly goals for a better body shape',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: ColorsPallet.black,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 35,
                          width: 90,
                          decoration: BoxDecoration(
                              color: ColorsPallet.backgroundcolor,
                              borderRadius: BorderRadius.circular(19)),
                          child: Center(
                            child: Text(
                              'Set A Goal',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: ColorsPallet.white,
                                fontFamily: GoogleFonts.poppins().fontFamily,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          // Additional AppBar properties can be set here
        ),
      ),
      body: Center(
        child: Text('Welcome to your app!'),
      ),
    );
  }
}
