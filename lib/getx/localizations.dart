import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPref = await SharedPreferences.getInstance();
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  MyController controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'locale',
      initialRoute: '/',
      locale: controller.intilang,
      translations: MyLocal(),
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
  MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home_page".tr)),
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
                  controller.changelocal('en');
                },
                child: Text("english".tr),
              ),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              onPressed: () {
                controller.changelocal('ar');
              },
              child: Text("arabic".tr),
            ),
          ],
        ),
      ),
    );
  }
}

class MyLocal extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "home_page": "الصفحة الرئيسة",
          "english": "الأنجليزى",
          "arabic": "العربى"
        },
        "en": {
          "home_page": "Home Page",
          "english": "english",
          "arabic": "arabic"
        },
      };
}

class MyController extends GetxController {
  Locale intilang = sharedPref!.getString("local") == null
      ? Get.deviceLocale!
      : Locale(sharedPref!.getString("local")!);
  changelocal(String x) async {
    sharedPref = await SharedPreferences.getInstance();
    sharedPref!.setString("local", x);
    Get.updateLocale(Locale(x));
  }
}
