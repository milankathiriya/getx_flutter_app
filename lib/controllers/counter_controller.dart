import 'package:get/get.dart';
import 'package:getx_flutter_4pm_app/models/counter_model.dart';

class CounterController extends GetxController {
  Counter c1 = Counter(c: 0.obs);

  void increment() {
    c1.c++;
  }
}
