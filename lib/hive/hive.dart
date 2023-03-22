import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('myBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hivek(),
    );
  }
}

class Hivek extends StatelessWidget {
  Hivek({Key? key}) : super(key: key);
  MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    print('Name: ${controller.boxname}');
    return Scaffold(
      appBar: AppBar(title: const Text('Hive')),
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Obx(() => const Text("data")),
            Text("${controller.boxname}"),
            Center(
              child: Obx(() => MaterialButton(
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    onPressed: () async {
                      var box = Hive.box('myBox');
                      print(controller.boxname);
                    },
                    child: const Text('readData'),
                  )),
            ),
            Center(
              child: Obx(() => MaterialButton(
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    onPressed: () async {
                      controller.box.put('name', 'David');
                      print(controller.box.containsKey('name'));
                    },
                    child: const Text('insertData'),
                  )),
            ),
            Center(
              child: Obx(() => MaterialButton(
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    onPressed: () async {
                      controller.box.delete('name');
                      print(controller.box.containsKey('name'));
                    },
                    child: const Text('deleteData'),
                  )),
            ),
            Center(
              child: Obx(() => MaterialButton(
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    onPressed: () async {
                      controller.box.put('name', 'ahmed');
                      print(controller.boxname);
                    },
                    child: const Text('updateData'),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  late Box box;
  var boxname = "";

  @override
  void onInit() {
    box = Hive.box('myBox');
    boxname = box.get('name') ?? "";
    super.onInit();
  }
}
