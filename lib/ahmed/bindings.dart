import 'package:get/get.dart';
import 'package:learn/getx/lifecycle/controller.dart';

class Mybindings2 implements Bindings {
  @override
  void dependencies() {
    Get.put(MyController(), permanent: true);
    Get.lazyPut(() => MyController2(), fenix: true);
  }
}
