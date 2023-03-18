import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initServices();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetxService',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Counter()),
      ],
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Counter extends GetView<DbService> {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GetxService counter")),
      body: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: GetX<DbService>(builder: (_) {
                return Text("${_.counter}");
              }),
            ),
            GetX<DbService>(
              builder: (_) {
                return ElevatedButton(
                  onPressed: () {
                    _.counter++;
                    _.sharedPref?.setInt("counter", _.counter.toInt());
                  },
                  child: Text("counter ++  ${_.counter}"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

void initServices() async {
  print('starting services ...');
  await Get.putAsync(() => DbService().sharedPrefs());
  print('All services started...');
}

class DbService extends GetxService {
  SharedPreferences? sharedPref;
  RxInt counter = 0.obs;
  Future<DbService> sharedPrefs() async {
    //start Service
    sharedPref = await SharedPreferences.getInstance();
    counter.value = sharedPref!.getInt("counter") ?? 0;
    //end Service
    return this;
  }
}
