import 'package:fit_life/src/feature/AnalyticsPage/view/Analytics.dart';
import 'package:fit_life/src/feature/Exersices/views/ExercisesPage.dart';
import 'package:fit_life/src/feature/Home/View/Homepage.dart';
import 'package:fit_life/src/feature/Home/widgets/NavbarBottom.dart';
import 'package:fit_life/src/feature/Profile/View/Profile.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(),
      ExercisePage(),
      AnalyticsPage(),
      ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavbar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
    );
  }
}
