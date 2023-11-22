import 'package:fit_life/src/res/image_assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fit_life/src/res/color_Pallet.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavbar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavbarItem(ImageAssets.svl2, 0),
          _buildNavbarItem(ImageAssets.svl1, 1),
          _buildNavbarItem(ImageAssets.svl3, 2),
          _buildNavbarItem(ImageAssets.svl4, 3),
        ],
      ),
    );
  }

  Widget _buildNavbarItem(String svgPath, int index) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            svgPath,
            color: currentIndex == index
                ? ColorsPallet.backgroundcolor
                : ColorsPallet.gray,
          ),
          SizedBox(height: 5.0),
          Container(
            height: 2.0,
            width: 20.0,
            color: currentIndex == index
                ? ColorsPallet.backgroundcolor
                : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
