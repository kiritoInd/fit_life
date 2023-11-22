import 'package:fit_life/src/feature/Home/widgets/CustomExTiles.dart';
import 'package:fit_life/src/feature/Home/widgets/HomeTopInfo.dart';
import 'package:fit_life/src/feature/Home/widgets/MainAppbar.dart';
import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40.0), // Set your custom height here
        child: CustomAppbar(title: "FitLife"),
      ),
      body: Column(
        children: [
          HomeTopInfo(),
          Container(
            height: size.height * 0.62,
            child: ListView(
              children: [
                CustomListItem(
                  backgroundImage: ImageAssets.hbg1,
                  title: 'FULL BODY',
                  subtitle: '7x4 Challenge',
                  completionPercentage: 0.0,
                  daysLeft: 30,
                ),
                CustomListItem(
                  backgroundImage: ImageAssets.hbg2,
                  title: 'LOWER BODY',
                  subtitle: '7x4 Challenge',
                  completionPercentage: 0.0,
                  daysLeft: 30,
                ),
                CustomListItem(
                  backgroundImage: ImageAssets.hbg2,
                  title: 'UPPER BODY',
                  subtitle: '7x4 Challenge',
                  completionPercentage: 0.0,
                  daysLeft: 30,
                ),
                CustomListItem(
                  backgroundImage: ImageAssets.hbg2,
                  title: 'CORE',
                  subtitle: '7x4 Challenge',
                  completionPercentage: 0.0,
                  daysLeft: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
