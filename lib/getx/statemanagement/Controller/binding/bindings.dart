import 'package:get/get.dart';

import '../../../getbuilderandgetx.dart';

class Mybindings implements Bindings {
  @override
  void dependencies() {
    Get.put(MyController());
    Get.put(MyController2(), permanent: true);
    // Get.lazyPut(() => MyController3());
    Get.lazyPut(() => MyController3(), fenix: true);
  }
}
