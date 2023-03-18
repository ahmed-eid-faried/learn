import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/getx/lifecycle/controller.dart';
import 'bindings.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MyWidget()),
        GetPage(
          name: '/Lazyputk',
          page: () => Lazyputk(),
          binding: Mybindings2(), //class تم انشاء زى الربط العادى
        ),
        GetPage(name: '/Putk', page: () => Putk()),
      ],
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: Mybindings2(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("Putk");
              },
              child: const Text("lifecycle put")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("Lazyputk");
              },
              child: const Text("lifecycle lazyput"))
        ],
      ),
    );
  }
}

class Putk extends StatelessWidget {
  Putk({Key? key}) : super(key: key);
  var controller = Get.find<MyController>();
  @override
  Widget build(BuildContext context) {
    print("build MyController put");

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
            Center(child: Obx(() => Text("${controller.x.value}"))),
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
          ],
        ),
      ),
    );
  }
}

class Lazyputk extends StatelessWidget {
  Lazyputk({Key? key}) : super(key: key);
  var controller = Get.find<MyController2>();
  @override
  Widget build(BuildContext context) {
    print("build MyController2 lazyput");

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
            Center(child: Obx(() => Text("${controller.x.value}"))),
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
          ],
        ),
      ),
    );
  }
}
