import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_flutter_4pm_app/views/screens/cart_page.dart';
import 'package:getx_flutter_4pm_app/views/screens/home_page.dart';

/*
    * State Management in GetX
      1. Simple
          - GetxController class => update() method
          - GetMaterialApp widget
          - GetBuilder widget

      2. Reactive (Rx)
          - GetXController class (Reactive (Rx) Data types)
          - GetMaterialApp widget
          - GetX and Obx widgets


    * Dependency Injection
      - Get.put(T)
      - Get.find<T>()


    * Navigation System
      - Routing and Navigation  (Get.to(), Get.off(), Get.toNamed(), ....)

*/

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/cart_page', page: () => CartPage()),
      ],
    ),
  );
}
