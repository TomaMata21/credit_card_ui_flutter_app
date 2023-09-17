import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_credit_app/utils/constants/assets.dart';
import 'package:ui_credit_app/utils/theme/app_style.dart';

class CustomIcons {
  static SvgPicture homeIcon({
    double? width,
    required int index,
  }) =>
      SvgPicture.asset(
        Assets.home,
        color: index == 0 ? $styles.colors.black : $styles.colors.grey,
        width: width,
      );

  static SvgPicture searchIcon({
    double? width,
    required int index,
  }) =>
      SvgPicture.asset(
        Assets.shape,
        color: index == 1 ? $styles.colors.black : $styles.colors.grey,
        width: width,
      );

  static SvgPicture cartIcon({
    double? width,
    required int index,
  }) =>
      SvgPicture.asset(
        Assets.cart,
        color: index == 2 ? $styles.colors.black : $styles.colors.grey,
        width: width,
      );

  static SvgPicture moreIcon({
    double? width,
    required int index,
  }) =>
      SvgPicture.asset(
        Assets.more,
        color: index == 3 ? $styles.colors.black : $styles.colors.grey,
        width: width,
      );
}
