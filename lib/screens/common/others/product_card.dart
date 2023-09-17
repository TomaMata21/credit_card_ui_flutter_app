import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../models/product.dart';
import '../../../utils/theme/app_style.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, required this.product,
  });
  
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap($styles.insets.xs),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(product.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Gap($styles.insets.xs),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 25.w,
              child: Text(
                product.name,
                style: $styles.text.bodyMedium,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Spacer(),
            Text(
              product.price,
              style: $styles.text.bodyMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        Gap($styles.insets.xs),
        Text(
          product.category,
          style: $styles.text.subtitleSmall,
        ),
        Gap($styles.insets.xs),
      ],
    );
  }
}