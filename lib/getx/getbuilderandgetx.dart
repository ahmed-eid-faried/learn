import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      routes: {
        "home": (x) => GetxNavigator(),
      },
      home: GetxNavigator(),
    );
  }
}

class GetxNavigator extends StatelessWidget {
  GetxNavigator({super.key});
  final MyController3 lcontroller = Get.put(MyController3());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Getx "),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.amber,
              child: GetX<MyController>(
                init: MyController(),
                initState: (controller) {},
                builder: (controller) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            controller.increase();
                          },
                          icon: const Icon(Icons.add)),
                      Center(child: Text("${controller.x}")),
                      IconButton(
                          onPressed: () {
                            controller.decrease();
                          },
                          icon: const Icon(Icons.remove)),
                      MaterialButton(
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("pop")),
                    ],
                  );
                },
              ),
            ),
            Container(
                color: Colors.blue,
                child: GetBuilder<MyController2>(
                  init: MyController2(),
                  initState: (controller) {},
                  builder: (controller) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              controller.increase();
                            },
                            icon: const Icon(Icons.add)),
                        Center(child: Text("${controller.x}")),
                        IconButton(
                            onPressed: () {
                              controller.decrease();
                            },
                            icon: const Icon(Icons.remove)),
                      ],
                    );
                  },
                )),
            Container(
                color: Colors.blue,
                child: Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              lcontroller.increase();
                            },
                            icon: const Icon(Icons.add)),
                        Center(child: Text("${lcontroller.x}")),
                        IconButton(
                            onPressed: () {
                              lcontroller.decrease();
                            },
                            icon: const Icon(Icons.remove)),
                      ],
                    ))),
          ],
        ));
  }
}

/////////////////////////
class MyController extends GetxController {
  RxInt x = 0.obs;
  increase() {
    x++;
    print(x);
  }

  decrease() {
    x--;
    print(x);
  }
}

class MyController2 extends GetxController {
  int x = 0;
  increase() {
    x++;
    print(x);
    update();
  }

  decrease() {
    x--;
    print(x);
    update();
  }
}

class MyController3 extends GetxController {
  RxInt x = 0.obs;
  increase() {
    x++;
    print(x);
  }

  decrease() {
    x--;
    print(x);
  }
}
