import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../utils/colors.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: AppColors.secondary,
        activeColor: AppColors.background,
        tabActiveBorder: Border.all(color: AppColors.primeWhite),
        tabBackgroundColor: AppColors.primeWhite,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Shop",
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: "Cart",
          ),
        ],
      ),
    );
  }
}
