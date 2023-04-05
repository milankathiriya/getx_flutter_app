import '../models/product_model.dart';
import 'package:get/get.dart';

List<Product> allProducts = [
  Product(
      id: 1.obs,
      name: "Laptop".obs,
      price: 78000.obs,
      category: "Electronics".obs),
  Product(
      id: 2.obs, name: "AC".obs, price: 24000.obs, category: "Electronics".obs),
  Product(
      id: 3.obs, name: "TV".obs, price: 20000.obs, category: "Electronics".obs),
  Product(
      id: 4.obs,
      name: "Mobile".obs,
      price: 12000.obs,
      category: "Electronics".obs),
  Product(
      id: 5.obs, name: "Chair".obs, price: 2000.obs, category: "Furniture".obs),
  Product(
      id: 6.obs, name: "T-Shirt".obs, price: 800.obs, category: "Cloths".obs),
  Product(
      id: 7.obs,
      name: "Washing Machine".obs,
      price: 16000.obs,
      category: "Electronics".obs),
  Product(
      id: 8.obs, name: "Shoes".obs, price: 900.obs, category: "Wearables".obs),
  Product(
      id: 9.obs, name: "Table".obs, price: 4000.obs, category: "Furniture".obs),
  Product(
      id: 10.obs,
      name: "Fridge".obs,
      price: 14000.obs,
      category: "Electronics".obs),
];
