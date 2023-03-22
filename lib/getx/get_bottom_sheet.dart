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
      title: 'bottomSheet',
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
      appBar: AppBar(title: const Text("bottomSheet")),
      body: Container(
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: MaterialButton(
                color: Colors.deepOrange,
                textColor: Colors.white,
                onPressed: () {
                  Get.bottomSheet(
                      clipBehavior: Clip.antiAlias,
                      shape: Border.all(
                        width: 2.0,
                        color: Colors.amber,
                      ),
                      Container(
                          decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                  bottom: Radius.circular(20))),
                          height: 200,
                          child: const Center(
                              child: Text("bottomSheet",
                                  style: TextStyle(fontSize: 30)))),
                      enterBottomSheetDuration: const Duration(seconds: 2),
                      exitBottomSheetDuration: const Duration(seconds: 2));
                },
                child: const Text("bottomSheet"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
