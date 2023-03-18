import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'defaultDialog',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Counter()),
      ],
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

class Counter extends StatelessWidget {
  Counter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("get defaultDialog")),
      body: Container(
        color: Colors.amberAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.deepOrange,
                textColor: Colors.white,
                onPressed: () {
                  Get.defaultDialog();
                },
                child: const Text("defaultDialog"),
              ),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              onPressed: () {
                Get.defaultDialog(
                    backgroundColor: Colors.amberAccent,
                    title: "defaultDialog",
                    titleStyle: const TextStyle(color: Colors.blue),
                    middleText:
                        "The eyes angels of sinking from so, sitting a bust that beating hopes the tinkled its there. Fancy gloating in whom heart, lost never explore wished and quoth cannot was,.",
                    middleTextStyle: const TextStyle(color: Colors.blueAccent),
                    textConfirm: "Confirm",
                    onConfirm: () {
                      print("onConfirm");
                      Get.back();
                    },
                    textCancel: "Cancel",
                    onCancel: () => print("onCancel"),
                    textCustom: "Custom",
                    onCustom: () => print("onCustom"),
                    actions: [
                      const Icon(Icons.abc),
                      const Icon(Icons.cabin),
                      const Icon(Icons.access_alarm_outlined),
                      const Icon(Icons.safety_divider_rounded),
                      const Icon(Icons.ac_unit_outlined),
                    ]);
              },
              child: const Text("defaultDialog"),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              onPressed: () {
                Get.defaultDialog(
                    backgroundColor: Colors.amberAccent,
                    title: "defaultDialog",
                    titleStyle: const TextStyle(color: Colors.blue),
                    content: Content(),
                    confirm: InkWell(
                      child: Text("Confirm"),
                      onTap: () {
                        print("onConfirm");
                        Get.back();
                      },
                    ),
                    cancel: InkWell(
                      child: Text("Cancel"),
                      onTap: () {
                        print("onConfirm");
                        Get.back();
                      },
                    ));
              },
              child: const Text("defaultDialog"),
            ),
          ],
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("enter your name",
            style: TextStyle(color: Colors.blueAccent)),
        TextFormField(),
        const Text("enter your password",
            style: TextStyle(color: Colors.blueAccent)),
        TextFormField()
      ],
    );
  }
}
