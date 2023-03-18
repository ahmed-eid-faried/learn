import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn/getx/statemanagement/Controller/binding/controller.dart';

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
          name: '/MyWidget2',
          page: () => const MyWidget2(),
          binding: Mybindings(), //class تم انشاء زى الربط العادى
        ),
        GetPage(name: '/PutPutLazyFind', page: () => PutPutLazyFind()),
      ],
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //  initialBinding: Mybindings(),
      initialBinding: BindingsBuilder(() {
        Get.put(MyController());
      }),
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
                Get.to("PutPutLazyFind", binding: Mybindings());
              },
              child: const Text("page one")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("MyWidget2");
              },
              child: const Text("page two"))
        ],
      ),
    );
  }
}

class PutPutLazyFind extends StatelessWidget {
  PutPutLazyFind({Key? key}) : super(key: key);
  var controller = Get.find<MyController>();
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
            Expanded(flex: 2, child: Counters()),
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

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Getx "),
        ),
      ),
      body: Counters(),
    );
  }
}

class Counters extends StatelessWidget {
  Counters({
    super.key,
  });
  var controller = Get.find<MyController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Center(child: Text("data")),
        Center(child: Text("${controller.x.value}")),
        Center(child: Text("${controller.y.value}")),
        Center(child: Text("${controller.sum}"))
      ],
    );
  }
}

/////////////////////////
