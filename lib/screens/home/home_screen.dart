import 'package:flutter/material.dart';
import 'package:ui_credit_app/screens/common/icons/custom_icons.dart';
import 'package:ui_credit_app/utils/theme/app_style.dart';

import 'home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final screens = [
    const HomePage(),
    Container(color: Colors.red),
    Container(color: Colors.orange),
    Container(color: Colors.green),
  ];

  void onTapItem(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      backgroundColor: $styles.colors.white,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: $styles.insets.xs,
          vertical: $styles.insets.sm,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          onTap: onTapItem,
          currentIndex: currentIndex,
          backgroundColor: $styles.colors.white,
          items: [
            BottomNavigationBarItem(
              icon: CustomIcons.homeIcon(index: currentIndex),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: CustomIcons.searchIcon(index: currentIndex),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: CustomIcons.cartIcon(index: currentIndex),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: CustomIcons.moreIcon(index: currentIndex),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
