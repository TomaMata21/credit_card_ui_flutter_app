import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:ui_credit_app/screens/cart/payment_screen.dart';

import '../../utils/constants/data.dart';
import '../../utils/constants/local_string.dart';
import '../../utils/theme/app_style.dart';
import '../common/appbar/check_out_app_bar.dart';
import '../common/buttons/custom_button.dart';
import '../common/others/check_out_item.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      appBar: const CheckOutAppBar(),
      body: ListView(
        children: [
          ...carts.map(
            (e) => CheckOutItem(product: e),
          ),
          Gap($styles.insets.s),
          Divider(
            color: $styles.colors.grey,
            thickness: 0.8,
          ),
          Gap($styles.insets.s),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: $styles.insets.s),
            child: Text(
              LocalString.shippingAddress,
              style: $styles.text.bodyLarge.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Gap($styles.insets.s),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: $styles.insets.s),
            child: Row(
              children: [
                SizedBox(
                  width: 60.w,
                  child: Text(
                    LocalString.address,
                    style: $styles.text.bodySmall,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 10.w,
                  child: RadioListTile(
                    value: "value",
                    groupValue: "value",
                    activeColor: $styles.colors.purple,
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
          ),
          Gap($styles.insets.s),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: $styles.insets.s),
            child: Text(
              LocalString.change,
              style: $styles.text.bodyMedium.copyWith(
                color: $styles.colors.purple,
              ),
            ),
          ),
          Gap($styles.insets.s),
          Divider(
            color: $styles.colors.grey,
            thickness: 0.8,
          ),
          Gap($styles.insets.s),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: $styles.insets.s),
            child: Text(
              LocalString.payment,
              style: $styles.text.bodyLarge.copyWith(
                fontWeight: FontWeight.bold,
                color: $styles.colors.grey,
              ),
            ),
          ),
          Gap($styles.insets.s),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all($styles.insets.s),
        child: CustomButton(
          label: LocalString.proceed,
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const PaymentScreen(),
              ),
            );
          },
          color: $styles.colors.buttonGrey,
        ),
      ),
    );
  }
}
