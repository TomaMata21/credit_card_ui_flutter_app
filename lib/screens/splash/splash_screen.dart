import 'package:flutter/material.dart';
import 'package:ui_credit_app/screens/home/home_screen.dart';
import 'package:ui_credit_app/utils/constants/local_string.dart';
import 'package:ui_credit_app/utils/theme/app_style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: Center(
        child: Text(
          LocalString.splashText,
          style: $styles.text.headlineLarge.copyWith(
            color: $styles.colors.purple,
          ),
        ),
      ),
    );
  }
}
