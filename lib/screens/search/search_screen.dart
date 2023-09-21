import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/constants/assets.dart';
import '../../utils/constants/local_string.dart';
import '../../utils/theme/app_style.dart';
import '../common/appbar/custom_app_bar_with_title.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      appBar: const CustomAppBarWithTitle(
        label: LocalString.search,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(Assets.blank, width: 80.w),
          ),
          Text(
            LocalString.noDataMessage,
            style: $styles.text.bodyLarge.copyWith(
              color: $styles.colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
