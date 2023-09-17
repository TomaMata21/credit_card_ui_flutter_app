import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../utils/constants/data.dart';
import '../../utils/constants/local_string.dart';
import '../../utils/theme/app_style.dart';
import '../common/appbar/custom_app_bar.dart';
import '../common/buttons/custom_button.dart';
import '../common/others/cart_item.dart';
import 'check_out_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      appBar: const CustomAppBar(),
      body: ListView(
        children: [
          Gap($styles.insets.md),
          ...data.map(
            (e) => CartItem(product: e),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: $styles.insets.xs,
        ),
        child: CustomButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CheckOutScreen(),
              ),
            );
          },
          label: LocalString.checkOut,
        ),
      ),
    );
  }
}
