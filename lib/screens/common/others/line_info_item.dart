import 'package:flutter/material.dart';

import '../../../utils/theme/app_style.dart';

class LineInfoItem extends StatelessWidget {
  const LineInfoItem({
    super.key,
    required this.label,
    required this.value,
    this.isBig = false,
  });

  final String label;
  final String value;
  final bool isBig;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: $styles.insets.xs,
        vertical: $styles.insets.xxxs,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: isBig ? $styles.text.bodyMedium : $styles.text.bodySmall,
          ),
          Text(
            value,
            style: isBig ? $styles.text.bodyMedium : $styles.text.bodySmall,
          ),
        ],
      ),
    );
  }
}
