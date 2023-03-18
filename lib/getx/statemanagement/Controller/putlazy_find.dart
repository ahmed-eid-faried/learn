import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  // final MyController controller = MyController();
  /// لو فعلته هيحفظ البيانات عند الأنتقال بي الصفحات و لن تحتاج لأنشاء مرة أخرى عند الدخول لصفحات داخلية
  final controller = Get.lazyPut(
    () => MyController(),
    fenix: true,

    /// لو فعلته هيحفظ المتحكم عند الأنتقال بين الصفحات
  );
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MyWidget()),
        GetPage(name: '/MyWidget2', page: () => const MyWidget2()),
        GetPage(name: '/PutPutLazyFind', page: () => PutPutLazyFind()),
      ],
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialBinding: BindingsBuilder(() {  /// لو فعلته هيحفظ البيانات عند الأنتقال بي الصفحات
      //   Get.put(controller);
      // }),
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
                Get.toNamed("PutPutLazyFind");
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

  // var controller = Get.find();
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
            const Expanded(flex: 2, child: Counters()),
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
      body: const Counters(),
    );
  }
}

class Counters extends StatelessWidget {
  const Counters({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<MyController>();

    // var controller = Get.find();
    return Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Center(child: Text("data")),
            Center(child: Text("${controller.x.value}")),
            Center(child: Text("${controller.y.value}")),
            Center(child: Text("${controller.sum}"))
          ],
        ));
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
