import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';
import '../buttons/custom_button.dart';
import 'custom_input.dart';

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
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.clear,
                    color: $styles.colors.black,
                    size: $styles.insets.md,
                  ),
                )
              ],
            ),
            Gap($styles.insets.xs),
            Text(
              LocalString.addNewCard,
              style: $styles.text.bodyLarge.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap($styles.insets.xs),
            const CustomInput(
              label: LocalString.nameOnCard,
              value: LocalString.fullName,
            ),
            Gap($styles.insets.xs),
            const CustomInput(
              label: LocalString.cardName,
              value: LocalString.cardNum,
            ),
            Gap($styles.insets.xs),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomInput(
                  label: LocalString.expiryDate,
                  value: LocalString.expiryDateValue,
                  width: 40.w,
                ),
                CustomInput(
                  label: LocalString.cvv,
                  value: ". . .",
                  width: 40.w,
                ),
              ],
            ),
            Gap($styles.insets.xs),
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
