import 'package:flutter/material.dart';

import '../../../utils/theme/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, required this.onPressed});

  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: $styles.colors.purple,
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
