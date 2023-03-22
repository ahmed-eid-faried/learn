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
        GetPage(name: '/', page: () => HomePage()),
        // GetPage(name: '/Page2', page: () => Page2()),
        GetPage(
            name: '/Page2',
            page: () => Page2(),
            binding: BindingsBuilder(() {
              Get.put(MyController()).name = Get.arguments['name'];
              Get.put(MyController()).password = Get.arguments['password'];
            })),
        GetPage(name: '/Page3', page: () => Page3()),
      ],
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  MyController contorller = Get.put(MyController());
  String? name = "";
  String? password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("bottomSheet")),
      body: Container(
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
              onChanged: (value) {
                name = value;
              },
              decoration: const InputDecoration(
                labelText: 'name',
              ),
            ),
            TextFormField(
              onChanged: (value) {
                password = value;
              },
              decoration: const InputDecoration(
                labelText: 'password',
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.deepOrange,
                textColor: Colors.white,
                onPressed: () {
                  contorller.bottumsheet();
                },
                child: const Text("bottomSheet"),
              ),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              onPressed: () {
                Get.toNamed("Page2",
                    arguments: {"name": "$name", "password": "$password"});
              },
              child: const Text("Get.arguments"),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  Page2({Key? key}) : super(key: key);
  MyController contorller = Get.put(MyController());
  bool isSnackbarOpenk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("page2")),
      body: Container(
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(child: Text("name: ${contorller.name}")),
            Text("password: ${contorller.password}"),
            Text("previousRoute: ${Get.previousRoute}"),
            Text("rawRoute: ${Get.rawRoute}"),
            Text("current: ${Get.routing.current}"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.snackbar("title", "message");
                  },
                  child: const Text("Get.arguments"),
                ),
                MaterialButton(
                  color: Colors.deepOrange,
                  textColor: Colors.white,
                  onPressed: () {
                    print({Get.isSnackbarOpen});
                    isSnackbarOpenk = Get.isSnackbarOpen;
                  },
                  child: Text("${isSnackbarOpenk}"),
                ),
              ],
            ),
            Text("${Get.isSnackbarOpen}"),
            MaterialButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              onPressed: () {
                print({Get.isDialogOpen});
              },
              child: const Text("isDialogOpen"),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              textColor: Colors.white,
              onPressed: () {
                print({Get.isBottomSheetOpen});
              },
              child: const Text("isBottomSheetOpen"),
            ),
            Text(GetPlatform.isAndroid == true
                ? "Android"
                : GetPlatform.isIOS == true
                    ? "isIOS"
                    : GetPlatform.isMacOS == true
                        ? "isMacOS"
                        : GetPlatform.isWindows == true
                            ? "isWindows"
                            : GetPlatform.isLinux == true
                                ? "isLinux"
                                : GetPlatform.isFuchsia == true
                                    ? "isFuchsia"
                                    : ""),
            Text(GetPlatform.isMobile == true
                ? "isMobile"
                : GetPlatform.isDesktop == true
                    ? "isDesktop"
                    : GetPlatform.isWeb == true
                        ? "isWeb"
                        : "x"),
            Text("width: ${Get.width}"),
            Text("height: ${Get.height}"),
            Text("isLandscape: ${context.isLandscape}"),
            Text("isPortrait: ${context.isPortrait}"),
            Text("isPortrait: ${context.textScaleFactor}"),

            /// True if the shortestSide is smaller than 600p
            Text("isPhone: ${context.isPhone}"),

            /// True if the shortestSide is largest than 600p
            Text("isSmallTablet: ${context.isSmallTablet}"),

            /// True if the shortestSide is largest than 720p
            Text("isLargeTablet: ${context.isLargeTablet}"),

            /// True if the current device is Tablet
            Text("isLargeTablet: ${context.isTablet}"),
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  Page3({Key? key}) : super(key: key);
  // MyController contorller = Get.put(MyController());
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
                  // contorller.bottumsheet();
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

class MyController extends GetxController {
  bottumsheet() {
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
                    top: Radius.circular(20), bottom: Radius.circular(20))),
            height: 200,
            child: const Center(
                child: Text("bottomSheet", style: TextStyle(fontSize: 30)))),
        enterBottomSheetDuration: const Duration(seconds: 2),
        exitBottomSheetDuration: const Duration(seconds: 2));
  }

  String? name;
  String? password;

  @override
  void onInit() {
    if (Get.arguments != null) {
      name = Get.arguments['name'];
      password = Get.arguments['password'];
    }
    super.onInit();
  }
}
