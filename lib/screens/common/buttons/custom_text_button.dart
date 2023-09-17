import 'package:flutter/material.dart';

import '../../../utils/theme/app_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.label,
    required this.onTap,
  });

  final String label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all($styles.insets.xxxxs),
        child: Text(
          label,
          style: $styles.text.bodyLarge.copyWith(
            color: $styles.colors.grey,
          ),
        ),
      ),
    );
  }
}
