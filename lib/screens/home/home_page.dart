import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../utils/constants/data.dart';
import '../../utils/theme/app_style.dart';
import '../common/appbar/home_app_bar.dart';
import '../common/others/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.white,
      appBar: const HomeAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: $styles.insets.s,
        ),
        child: GridView.custom(
          gridDelegate: SliverWovenGridDelegate.count(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            pattern: [
              const WovenGridTile(
                5 / 8,
                crossAxisRatio: 1,
                alignment: AlignmentDirectional.topCenter,
              ),
              const WovenGridTile(
                1,
                alignment: AlignmentDirectional.center,
              ),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: data.length,
            (context, index) => ProductCard(product: data[index]),
          ),
        ),
      ),
    );
  }
}
