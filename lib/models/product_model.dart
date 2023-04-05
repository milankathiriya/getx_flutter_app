import 'package:get/get.dart';

class Product {
  final RxInt id;
  final RxString name;
  final RxInt price;
  final RxString category;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
  });
}
