import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  final MyController controller = MyController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => GetxNavigator()),
      ],
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(controller);
      }),
    );
  }
}

class GetxNavigator extends StatelessWidget {
  GetxNavigator({Key? key}) : super(key: key);
  var controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Getx "),
        ),
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Center(child: Text("data")),
            GetX<MyController>(
              builder: (controller) {
                print("getx ==>> x");

                return Center(child: Text("${controller.x.value}"));
              },
            ),
            GetX<MyController>(
              builder: (controller) {
                print("getx ==>>y");
                return Center(child: Text("${controller.y.value}"));
              },
            ),
            GetX<MyController>(
              builder: (controller) {
                print("getx ==>> sum");
                return Center(child: Text("${controller.sum}"));
              },
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              IconButton(
                onPressed: () {
                  controller.increasex();
                },
                icon: const Icon(Icons.add),
              ),
              const Text("  X  "),
              IconButton(
                onPressed: () {
                  controller.decreasex();
                },
                icon: const Icon(Icons.remove_circle),
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              IconButton(
                onPressed: () {
                  controller.increasey();
                },
                icon: const Icon(Icons.add),
              ),
              const Text("  Y  "),
              IconButton(
                onPressed: () {
                  controller.decreasey();
                },
                icon: const Icon(Icons.remove_circle),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

/////////////////////////

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
