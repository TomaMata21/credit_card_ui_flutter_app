import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';
import '../buttons/custom_button.dart';

class AddCardBottomSheet extends StatelessWidget {
  const AddCardBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: $styles.colors.white,
      width: 100.w,
      child: Padding(
        padding: EdgeInsets.all($styles.insets.xs),
        child: ListView(
          // mainAxisSize: MainAxisSize.min,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.clear,
                    color: $styles.colors.black,
                  ),
                ),
              ],
            ),
            Gap($styles.insets.sm),
            Text(
              "Add New Card",
              style: $styles.text.bodyLarge.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap($styles.insets.sm),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name on card",
                  style: $styles.text.subtitleSmall,
                ),
                Text(
                  "Aycan Doganlar",
                  style: $styles.text.bodyMedium.copyWith(
                    color: $styles.colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Gap($styles.insets.xs),
            Divider(color: $styles.colors.grey),
            Gap($styles.insets.xs),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Card number",
                  style: $styles.text.subtitleSmall,
                ),
                Text(
                  "1234  4567  7890  1234",
                  style: $styles.text.bodyMedium.copyWith(
                    color: $styles.colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Gap($styles.insets.xs),
            Divider(color: $styles.colors.grey),
            Gap($styles.insets.xs),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Expiry Date",
                      style: $styles.text.subtitleSmall,
                    ),
                    Text(
                      "02/24",
                      style: $styles.text.bodyMedium.copyWith(
                        color: $styles.colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CVV",
                      style: $styles.text.subtitleSmall,
                    ),
                    Text(
                      ". . .",
                      style: $styles.text.bodyMedium.copyWith(
                        color: $styles.colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
            Gap($styles.insets.sm),
            Divider(color: $styles.colors.grey),
            Padding(
              padding: EdgeInsets.all($styles.insets.s),
              child: CustomButton(
                label: LocalString.payNow,
                onPressed: () {},
                color: $styles.colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
