import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_4pm_app/controllers/counter_controller.dart';
import 'package:getx_flutter_4pm_app/controllers/product_controller.dart';

import '../../res/all_products.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CounterController counterController = Get.put(CounterController());
  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.light_mode_outlined),
            onPressed: () {
              (Get.isDarkMode)
                  ? Get.changeThemeMode(ThemeMode.light)
                  : Get.changeThemeMode(ThemeMode.dark);
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Get.toNamed('/cart_page');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: allProducts.length,
        itemBuilder: (context, i) {
          return Card(
            elevation: 3,
            child: ListTile(
              isThreeLine: true,
              leading: Text("${allProducts[i].id}"),
              title: Text("${allProducts[i].name}"),
              subtitle: Text(
                  "${allProducts[i].category}\nRs. ${allProducts[i].price}"),
              trailing: IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {
                  productController.addProduct(product: allProducts[i]);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
