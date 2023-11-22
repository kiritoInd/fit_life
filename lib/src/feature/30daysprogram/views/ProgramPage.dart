import 'package:fit_life/src/feature/Home/widgets/MainAppbar.dart';
import 'package:flutter/material.dart';

class ProgramPage extends StatelessWidget {
  const ProgramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50.0), // Set your custom height here
        child: CustomAppbar(
          title: "CHALLENGE",
          autoimplyleadingf: true,
        ),
      ),
    );
  }
}
