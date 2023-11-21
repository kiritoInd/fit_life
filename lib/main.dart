import 'package:fit_life/splash.dart';
import 'package:fit_life/src/feature/Home/View/Home.dart';
import 'package:fit_life/src/feature/Home/View/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FitLife',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
        home: SplashScreenPage() // SplashScreenPage(),
        );
  }
}
