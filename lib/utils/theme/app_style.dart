import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

final $styles = AppStyle();

@immutable
class AppStyle {
  final _Colors colors = _Colors();
  final _Text text = _Text();
  final _Insets insets = _Insets();
}

@immutable
class _Text {
  final headlineLarge = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    fontFamily: "Montserrat",
    color: $styles.colors.black,
  );

  final headlineSmall = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    fontFamily: "Montserrat",
    color: $styles.colors.black,
  );

  final bodySmall = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
    color: $styles.colors.black,
  );

  final bodyMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
    color: $styles.colors.black,
  );

  final bodyLarge = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
    color: $styles.colors.black,
  );

  final labelLarge = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
    color: $styles.colors.black,
  );

  final subtitleSmall = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
    color: $styles.colors.grey,
  );
}

@immutable
class _Colors {
  final purple = const Color(0xFF8688BC);
  final grey = const Color(0xFFBBBBBB);
  final buttonGrey = const Color(0xFFB5B5B5);
  final black = const Color(0xFF424347);
  final white = const Color(0xFFFFFFFF);
  final iconGrey = const Color(0xFF979797);
}

@immutable
class _Insets {
  final double xxxxxs = 1.sp;
  final double xxxxs = 2.sp;
  final double xxxs = 4.sp;
  final double xxs = 6.sp;
  final double xs = 8.sp;
  final double s = 10.sp;
  final double ss = 12.sp;
  final double sm = 16.sp;
  final double m = 20.sp;
  final double md = 24.sp;
  final double lg = 32.sp;
  final double sl = 40.sp;
  final double xl = 48.0.sp;
  final double xxl = 60.sp;
  final double xxxl = 64.sp;
}
