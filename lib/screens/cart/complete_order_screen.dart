import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_credit_app/screens/common/buttons/custom_button.dart';

import '../../utils/constants/assets.dart';
import '../../utils/constants/local_string.dart';
import '../../utils/theme/app_style.dart';
import '../common/others/line_info_item.dart';

class CompleteOrderScreen extends StatelessWidget {
  const CompleteOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Image.asset(
                  Assets.confetti,
                  width: 40.w,
                  height: 20.h,
                  // width: 50.w,
                ),
                Text(
                  LocalString.orderComplete,
                  style: $styles.text.bodyLarge.copyWith(
                    color: $styles.colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  LocalString.orderNum,
                  style: $styles.text.subtitleSmall,
                ),
                Gap($styles.insets.lg),
                Divider(color: $styles.colors.grey),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: $styles.insets.sm,
                    horizontal: $styles.insets.sm,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        LocalString.orderedItems,
                        style: $styles.text.bodyMedium,
                      ),
                      Icon(
                        Icons.add,
                        color: $styles.colors.black,
                      ),
                    ],
                  ),
                ),
                Divider(color: $styles.colors.grey),
                Gap($styles.insets.s),
                const LineInfoItem(
                  label: LocalString.order,
                  value: "28.00\$",
                ),
                const LineInfoItem(
                  label: LocalString.delivery,
                  value: "7.20\$",
                ),
                const LineInfoItem(
                  label: LocalString.summary,
                  value: "35.20\$",
                  isBig: true,
                ),
                Gap($styles.insets.s),
                SizedBox(
                  width: 95.w,
                  child: CustomButton(
                    label: LocalString.continueShopping,
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Gap($styles.insets.xs),
                SizedBox(
                  width: 95.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: $styles.colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(
                          color: $styles.colors.purple,
                          width: $styles.insets.xxxxs,
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: $styles.insets.xs),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      LocalString.orderedDetails,
                      style: $styles.text.bodyMedium.copyWith(
                        color: $styles.colors.purple,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
