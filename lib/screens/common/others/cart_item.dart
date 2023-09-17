import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

import '../../../models/product.dart';
import '../../../utils/constants/local_string.dart';
import '../../../utils/theme/app_style.dart';
import '../buttons/custom_text_button.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key, required this.product});
  
  final Product product;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 23.h,
      padding: EdgeInsets.all($styles.insets.xxs),
      margin: EdgeInsets.all($styles.insets.xxs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(
            checkColor: $styles.colors.white,
            activeColor: $styles.colors.purple,
            value: widget.product.status == LocalString.inStock,
            onChanged: (value) {},
          ),
          Expanded(
              child: Column(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      widget.product.name,
                      textAlign: TextAlign.start,
                      style: $styles.text.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Gap($styles.insets.xs),
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      widget.product.category,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: $styles.text.subtitleSmall,
                    ),
                  ),
                  Gap($styles.insets.xs),
                  SizedBox(
                    width: 100.w,
                    child: Text.rich(
                      TextSpan(text: "${widget.product.price} ", children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Icon(
                            Icons.circle,
                            size: $styles.insets.xxs,
                            color: $styles.colors.grey.withOpacity(0.3),
                          ),
                        ),
                        TextSpan(
                          text: " ${widget.product.status}",
                          style: $styles.text.bodySmall.copyWith(
                            color: widget.product.status == LocalString.inStock
                                ? $styles.colors.purple
                                : $styles.colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                      style: $styles.text.bodyMedium,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Gap($styles.insets.xs),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: $styles.insets.xs,
                        ),
                        decoration: BoxDecoration(
                          color: $styles.colors.lightGrey,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            CustomTextButton(
                              onTap: () {
                                if (widget.product.count < 100) {
                                  setState(() {
                                    widget.product.count++;
                                  });
                                }
                              },
                              label: "+",
                            ),
                            Gap($styles.insets.xxxs),
                            Padding(
                              padding: EdgeInsets.all($styles.insets.xxxxs),
                              child: Text(
                                "${widget.product.count}",
                                style: $styles.text.bodyMedium.copyWith(
                                  color: $styles.colors.grey,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Gap($styles.insets.xxxs),
                            CustomTextButton(
                              onTap: () {
                                if (widget.product.count > 0) {
                                  setState(() {
                                    widget.product.count--;
                                  });
                                }
                              },
                              label: "-",
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (widget.product.count != 0) {
                            setState(() {
                              widget.product.count = 0;
                            });
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(
                            $styles.insets.xxs,
                          ),
                          decoration: BoxDecoration(
                            color: $styles.colors.lightGrey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.delete,
                            color: $styles.colors.grey,
                          ),
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ],
              )),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(widget.product.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
