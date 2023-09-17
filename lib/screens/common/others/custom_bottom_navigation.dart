import 'package:flutter/material.dart';

import '../../../utils/theme/app_style.dart';
import '../icons/custom_icons.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: $styles.insets.xs,
        vertical: $styles.insets.sm,
      ),
      decoration: BoxDecoration(
        color: $styles.colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        onTap: onTap,
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
    );
  }
}
