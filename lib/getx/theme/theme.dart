import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance(); // initialize sharedPref
  runApp(App(sharedPreferences: sharedPref!));
}

class App extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  App({Key? key, required this.sharedPreferences}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyController controller = Get.put(MyController(
        sharedPref: sharedPreferences)); // create controller instance
    return GetMaterialApp(
      title: 'bottomSheet',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
      ],
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      theme: controller.themeb == true
          ? controller.themelight
          : controller.themedark,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyController controller = Get.find(); // get controller instance
    return Scaffold(
      appBar: AppBar(title: const Text("theme")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: MaterialButton(
                color: controller.themelight.primaryColor,
                textColor: Colors.white,
                onPressed: () {
                  Get.changeTheme(controller.themelight);
                  controller.themeb = true;
                  controller.sharedPref?.setBool("theme", controller.themeb);
                },
                child: const Text("themelight"),
              ),
            ),
            MaterialButton(
              color: controller.themedark.primaryColor,
              textColor: Colors.white,
              onPressed: () {
                Get.changeTheme(controller.themedark);
                controller.themeb = false;
                controller.sharedPref?.setBool("theme", controller.themeb);
              },
              child: const Text("themedark"),
            ),
          ],
        ),
      ),
    );
  }
}

class MyController extends GetxController {
  ThemeData themelight = ThemeData.light().copyWith(
    primaryColor: Colors.amber,
    appBarTheme: const AppBarTheme(color: Colors.amber),
  );
  ThemeData themedark = ThemeData.dark().copyWith(
    primaryColor: Colors.red,
    appBarTheme: const AppBarTheme(color: Colors.red),
  );
  SharedPreferences? sharedPref;
  bool themeb = true;

  MyController({required this.sharedPref});

  @override
  void onInit() async {
    super.onInit();
    await sharedPrefs();
  }

  Future<void> sharedPrefs() async {
    themeb = sharedPref!.getBool("theme") ?? true;
  }
}
