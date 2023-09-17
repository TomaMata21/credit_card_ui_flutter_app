import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../models/product.dart';
import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';

class CheckOutItem extends StatelessWidget {
  const CheckOutItem({super.key, required this.product});
  
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all($styles.insets.s),
      padding: EdgeInsets.symmetric(horizontal: $styles.insets.xs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name,
                style: $styles.text.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Gap($styles.insets.xxxs),
              Text(
                product.category,
                style: $styles.text.subtitleSmall,
              ),
              Text.rich(
                TextSpan(text: "${product.price} ", children: [
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Icon(
                      Icons.circle,
                      size: $styles.insets.xxs,
                      color: $styles.colors.grey.withOpacity(0.3),
                    ),
                  ),
                  TextSpan(
                    text: " ${product.status}",
                    style: $styles.text.bodySmall.copyWith(
                      color: product.status == LocalString.inStock
                          ? $styles.colors.purple
                          : $styles.colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
                style: $styles.text.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          Container(
            height: 25.w,
            width: 25.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(product.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
