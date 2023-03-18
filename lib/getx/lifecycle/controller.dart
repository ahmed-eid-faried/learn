import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

//put
class MyController extends GetxController {
  RxInt x = 0.obs;

  void increasex() {
    x++;
    print(x);
  }

  decreasex() {
    x--;
    print(x);
  }

  @override
  void onInit() {
    print("onInit MyController put");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady MyController put");
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose MyController put");
    super.onClose();
  }
}

// lazyput
class MyController2 extends GetxController {
  RxInt x = 0.obs;

  void increasex() {
    x++;
    print(x);
  }

  decreasex() {
    x--;
    print(x);
  }

  @override
  void onInit() {
    print("onInit MyController2 lazyput");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady MyController2 lazyput");
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose MyController2 lazyput");
    super.onClose();
  }
}
