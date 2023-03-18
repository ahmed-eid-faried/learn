
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MyController extends GetxController {
  RxInt x = 0.obs;
  RxInt y = 0.obs;

  void increasex() {
    x++;
    print(x);
  }

  increasey() {
    y++;
    print(y);
  }

  decreasex() {
    x--;
    print(x);
  }

  decreasey() {
    y--;
    print(y);
  }

  int get sum => x.value + y.value;
}

class MyController2 extends GetxController {
  RxInt x = 0.obs;
  RxInt y = 0.obs;

  void increasex() {
    x++;
    print(x);
  }

  increasey() {
    y++;
    print(y);
  }

  decreasex() {
    x--;
    print(x);
  }

  decreasey() {
    y--;
    print(y);
  }

  int get sum => x.value + y.value;
}

class MyController3 extends GetxController {
  RxInt x = 0.obs;
  RxInt y = 0.obs;

  void increasex() {
    x++;
    print(x);
  }

  increasey() {
    y++;
    print(y);
  }

  decreasex() {
    x--;
    print(x);
  }

  decreasey() {
    y--;
    print(y);
  }

  int get sum => x.value + y.value;
}
