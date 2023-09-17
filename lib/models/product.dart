import '../utils/app_utils.dart';
import '../utils/constants/local_string.dart';

class Product {
  final String name;
  final String price;
  final String category;
  final String image;
  final String status;
  int count;

  Product({
    required this.name,
    this.category = LocalString.category,
    required this.image,
    this.count = 0,
  })  : status = AppUtils.randomBool()
            ? LocalString.inStock
            : LocalString.outOfStock,
        price = "\$${AppUtils.randomPrice()}";
}
