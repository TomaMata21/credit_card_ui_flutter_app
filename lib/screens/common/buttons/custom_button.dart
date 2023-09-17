import 'package:flutter/material.dart';

import '../../../utils/theme/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, required this.onPressed, this.color});

  final String label;
  final void Function() onPressed;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? $styles.colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        padding: EdgeInsets.symmetric(vertical: $styles.insets.xs),
      ),
      child: Text(
        label,
        style: $styles.text.bodyMedium.copyWith(
          color: $styles.colors.white,
        ),
      ),
    );
  }
}
