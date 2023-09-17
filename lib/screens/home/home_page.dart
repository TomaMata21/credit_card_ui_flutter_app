import 'package:flutter/material.dart';

import '../../utils/theme/app_style.dart';
import '../common/appbar/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      appBar: const HomeAppBar(),
    );
  }
}
