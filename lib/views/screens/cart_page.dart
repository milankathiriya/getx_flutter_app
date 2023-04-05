import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_4pm_app/controllers/product_controller.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
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
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Obx(
                    () => Text(
                        "Total Quantity: ${productController.totalQuantity}"),
                  ),
                  Obx(
                    () => Text("Total Price: ${productController.totalPrice}"),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 12,
              child: Obx(() {
                return ListView.builder(
                  itemCount: productController.addedProducts.length,
                  itemBuilder: (context, i) {
                    return Card(
                      elevation: 3,
                      child: ListTile(
                        isThreeLine: true,
                        leading: Text("${i + 1}"),
                        title:
                            Text("${productController.addedProducts[i].name}"),
                        subtitle: Text(
                            "${productController.addedProducts[i].category}\nRs. ${productController.addedProducts[i].price}"),
                        trailing: IconButton(
                          icon: Icon(Icons.remove_shopping_cart_outlined),
                          onPressed: () {
                            productController.removeProduct(
                                product: productController.addedProducts[i]);
                          },
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
