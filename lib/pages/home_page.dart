import 'package:flutter/material.dart';
import 'package:sneakers_shop/pages/shop_page.dart';
import 'package:sneakers_shop/utils/colors.dart';

import '../components/navbar.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateTo(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(Icons.menu, color: AppColors.primeWhite),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.primeWhite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Image.asset(
                      "lib/images/logo-phone.png",
                      color: AppColors.background,
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: ListTile(
                    leading: Icon(Icons.home, color: AppColors.background),
                    title: Text(
                      "HOME",
                      style: TextStyle(color: AppColors.background),
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                  child: ListTile(
                    leading: Icon(Icons.info, color: AppColors.background),
                    title: Text(
                      "ABOUT US",
                      style: TextStyle(color: AppColors.background),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: ListTile(
                leading: Icon(Icons.logout, color: AppColors.background),
                title: Text(
                  "LOGOUT",
                  style: TextStyle(color: AppColors.background),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
