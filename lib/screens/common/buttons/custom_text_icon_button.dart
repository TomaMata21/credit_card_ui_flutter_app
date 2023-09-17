import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/theme/app_style.dart';

class CustomTextIconButton extends StatelessWidget {
  const CustomTextIconButton({
    super.key,
    required this.label,
    required this.iconData,
    this.onPressed,
    this.hasTrailing = false,
  });

  final String label;
  final IconData iconData;
  final void Function()? onPressed;
  final bool hasTrailing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
           iconData,
            color: $styles.colors.black,
            size: $styles.insets.sm,
          ),
          Gap($styles.insets.xxxs),
          Text(label, style: $styles.text.bodySmall),
          if (hasTrailing) Gap($styles.insets.xxxxxs),
          if (hasTrailing)
            Icon(
              Icons.keyboard_arrow_down,
              color: $styles.colors.iconGrey,
            ),
        ],
      ),
    );
  }
}
