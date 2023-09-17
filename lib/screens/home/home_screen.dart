import 'package:flutter/material.dart';

import '../../utils/theme/app_style.dart';
import '../cart/cart_screen.dart';
import '../common/others/custom_bottom_navigation.dart';
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
    const HomePage(),
    const CartScreen(),
    const HomePage(),
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
      bottomNavigationBar: CustomBottomNavigation(
        onTap: onTapItem,
        currentIndex: currentIndex,
      ),
    );
  }
}
