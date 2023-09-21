import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/theme/app_style.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.label,
    required this.value,
    this.width,
  });

  final String label;
  final String value;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 100.w,
      child: TextFormField(
        initialValue: value,
        style: $styles.text.bodyMedium.copyWith(
          color: $styles.colors.black,
          fontWeight: FontWeight.normal,
        ),
        decoration: InputDecoration(
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: $styles.colors.grey)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: $styles.colors.grey)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: $styles.colors.grey)),
          label: Text(
            label,
            style: $styles.text.bodyMedium.copyWith(
              color: $styles.colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
