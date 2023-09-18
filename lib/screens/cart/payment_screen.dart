import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/constants/local_string.dart';
import '../../utils/theme/app_style.dart';
import '../common/buttons/custom_button.dart';
import '../common/others/credit_card.dart';
import '../common/others/line_info_item.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController(viewportFraction: 0.8, initialPage: 1);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      appBar: AppBar(
        backgroundColor: $styles.colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_outlined,
            color: $styles.colors.black,
            size: $styles.insets.md,
          ),
        ),
        // leading: ,
      ),
      body: ListView(
        children: [
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
                  color: $styles.colors.black.withOpacity(0.5)),
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
                    style: $styles.text.bodySmall.copyWith(
                      color: $styles.colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 10.w,
                  child: RadioListTile(
                    value: "value",
                    groupValue: "value",
                    activeColor: $styles.colors.purple.withOpacity(0.5),
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
                color: $styles.colors.purple.withOpacity(0.5),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  LocalString.payment,
                  style: $styles.text.bodyLarge.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.add,
                        color: $styles.colors.black,
                      ),
                      Text(
                        LocalString.addNewCard,
                        style: $styles.text.bodyMedium.copyWith(
                          fontWeight: FontWeight.normal,
                          color: $styles.colors.deepBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap($styles.insets.s),
          SizedBox(
            height: 25.h,
            child: PageView(
              controller: pageController,
              children: [
                CreditCard(color: $styles.colors.red),
                const CreditCard(),
                CreditCard(color: $styles.colors.blue),
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: $styles.insets.xs),
              child: SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ScrollingDotsEffect(
                  activeDotColor: $styles.colors.activeGrey,
                  dotColor: $styles.colors.inactiveGrey,
                  dotHeight: 6,
                  dotWidth: 6,
                ),
                onDotClicked: (index) {},
              ),
            ),
          ),
          Gap($styles.insets.s),
          Divider(
            color: $styles.colors.grey,
            thickness: 0.8,
          ),
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
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all($styles.insets.s),
        child: CustomButton(
          label: LocalString.payNow,
          onPressed: () {},
          color: $styles.colors.purple,
        ),
      ),
    );
  }
}
