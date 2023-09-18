import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants/assets.dart';
import '../../../utils/theme/app_style.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 90.w,
      margin: EdgeInsets.symmetric(horizontal: $styles.insets.xxxs),
      padding: EdgeInsets.all($styles.insets.sm),
      decoration: BoxDecoration(
          color:  color ?? $styles.colors.purple,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(Assets.visa),
          Gap($styles.insets.sm),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                3,
                    (index) => Text.rich(
                  TextSpan(text: "", children: [
                    ...List.generate(
                      4,
                          (index) => WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.all($styles.insets.xxxxs),
                          child: Icon(
                            Icons.circle,
                            size: $styles.insets.xxs,
                            color: $styles.colors.white.withOpacity(0.7),
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              Text(
                "3282",
                style: $styles.text.bodySmall.copyWith(
                  color: $styles.colors.white,
                ),
              ),
            ],
          ),
          Gap($styles.insets.sm * 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Card Holder",
                    style: $styles.text.subtitleSmall,
                  ),
                  Text(
                    "Aycan Doganlar",
                    style: $styles.text.bodyMedium.copyWith(
                      color: $styles.colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Expires",
                    style: $styles.text.subtitleSmall,
                  ),
                  Text(
                    "12/23",
                    style: $styles.text.bodyMedium.copyWith(
                      color: $styles.colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
