import '../utils/app_utils.dart';
import '../utils/constants/local_string.dart';

class Product {
  final String name;
  final String price;
  final String category;
  final String image;
  final String status;

  Product({
    required this.name,
    this.category = LocalString.category,
    required this.image,
  })  : status = AppUtils.randomBool()
            ? LocalString.inStock
            : LocalString.outOfStock,
        price = "\$${AppUtils.randomPrice()}";
}
