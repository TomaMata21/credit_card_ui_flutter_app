import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';
import '../buttons/custom_text_icon_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: $styles.colors.white,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: $styles.insets.xs,
        vertical: $styles.insets.xxs,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.arrow_back_outlined,
              color: $styles.colors.black,
              size: $styles.insets.md,
            ),
          ),
          Gap($styles.insets.s),
          Text(
            LocalString.cart,
            style: $styles.text.headlineSmall,
          ),
          Gap($styles.insets.xs),
          Row(
            children: [
              Text(
                LocalString.itemCount,
                style: $styles.text.subtitleSmall,
              ),
              const Spacer(),
              CustomTextIconButton(
                label: LocalString.selectAll,
                iconData: Icons.check,
                onPressed: () {},
              ),
              Gap($styles.insets.xxxs),
              CustomTextIconButton(
                label: LocalString.deleteSelected,
                iconData: Icons.delete,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(100.w, 18.h);
}
