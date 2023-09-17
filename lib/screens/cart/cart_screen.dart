import 'package:flutter/material.dart';

import '../../utils/theme/app_style.dart';
import '../common/appbar/custom_app_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      appBar: const CustomAppBar(),
    );
  }
}
