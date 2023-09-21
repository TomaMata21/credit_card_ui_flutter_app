import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/theme/app_style.dart';

class CustomAppBarWithTitle extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWithTitle({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: $styles.colors.white,
      ),
      padding: EdgeInsets.symmetric(
        vertical: $styles.insets.xxs,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: $styles.insets.xs,
            ),
            child: Text(
              label,
              style: $styles.text.headlineSmall,
            ),
          ),
          Gap($styles.insets.s),
          Divider(
            color: $styles.colors.grey,
            thickness: 0.8,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(100.w, 18.h);
}
