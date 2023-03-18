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
      title: 'snackbar',
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
      appBar: AppBar(title: const Text("snackbar")),
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
                  Get.bottomSheet(
                      Counter(),
                          // color: Colors.amber,
                          // child: const Text("bottomSheet")),
                      enterBottomSheetDuration: const Duration(seconds: 2),
                      exitBottomSheetDuration: const Duration(seconds: 2));
                },
                child: const Text("snackbar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
