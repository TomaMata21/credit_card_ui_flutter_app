import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';

class CheckOutAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CheckOutAppBar({super.key});

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
            child: InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(
                Icons.arrow_back_outlined,
                color: $styles.colors.black,
                size: $styles.insets.md,
              ),
            ),
          ),
          Gap($styles.insets.s),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: $styles.insets.xs,
            ),
            child: Text(
              LocalString.checkOut,
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
