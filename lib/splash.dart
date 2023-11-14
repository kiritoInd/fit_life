import 'package:fit_life/src/ScreensPages/view/ScreenPageOne.dart';
import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Color _backgroundColor = Colors.white; // Initial background color
  Color _fontcolor = const Color(0xff92A3FD);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 1200), (Timer timer) {
      // Change background color every second
      setState(() {
        _backgroundColor = _backgroundColor == Colors.white
            ? const Color(0xff92A3FD)
            : Colors.white;
        _fontcolor = _fontcolor == const Color(0xff92A3FD)
            ? Colors.white
            : const Color(0xff92A3FD);
      });
    });

    // Navigate to the home page after 5 seconds (adjust as needed)
    Timer(const Duration(milliseconds: 2400), () {
      _timer?.cancel();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const ScreenOne()));
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FitLife',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 46.0,
                color: _fontcolor,
              ),
            ),
            Text(
              'Everybody Can Train',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                color: _fontcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to your app!'),
      ),
    );
  }
}
