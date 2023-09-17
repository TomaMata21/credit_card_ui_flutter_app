import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';
import '../buttons/custom_text_icon_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: $styles.colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Container(
      decoration: BoxDecoration(
        color: $styles.colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: $styles.insets.xs,
        vertical: $styles.insets.xxs,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Text(
            LocalString.featured,
            style: $styles.text.headlineLarge.copyWith(
              color: $styles.colors.purple,
            ),
          ),
          Gap($styles.insets.xs),
          Row(
            children: [
              Text(
                LocalString.items,
                style: $styles.text.subtitleSmall,
              ),
              const Spacer(),
              CustomTextIconButton(
                label: LocalString.sort,
                iconData: Icons.sort_outlined,
                onPressed: () {},
                hasTrailing: true,
              ),
              Gap($styles.insets.xxxs),
              CustomTextIconButton(
                label: LocalString.filter,
                iconData: Icons.filter_alt_outlined,
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
