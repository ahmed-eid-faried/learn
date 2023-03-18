import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/PageOne', page: () => const PageOne()),
        GetPage(name: '/PageTwo', page: () => const PageTwo()),
        GetPage(name: '/PageThree', page: () => const PageThree()),
        GetPage(name: '/Home', page: () => const GetxNavigator()),
        GetPage(name: '/NamedPages', page: () => const NamedPages()),
      ],
      title: 'Flutter Demo',
      routes: {
        "home": (x) => const GetxNavigator(),
      },
      home: const GetxNavigator(),
    );
  }
}

class GetxNavigator extends StatelessWidget {
  const GetxNavigator({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Getx Navigator"),
          ),
        ),
        body: Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Center(child: Text("data")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(const PageOne());
                  },
                  child: const Text("go to PageOne")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(const PageTwo());
                  },
                  child: const Text("go to PageTwo")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.off(const PageThree());
                  },
                  child: const Text("off PageThree")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.off(const NamedPages());
                  },
                  child: const Text("off NamedPages")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("back")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("pop")),
            ],
          ),
        ));
  }
}

/////////////////////////
class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Getx PageOne"),
          ),
        ),
        body: Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Center(child: Text("data")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(const PageOne());
                  },
                  child: const Text("go to PageOne")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(const PageTwo());
                  },
                  child: const Text("go to PageTwo")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(const PageThree());
                  },
                  child: const Text("go to PageThree")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("back")),
            ],
          ),
        ));
  }
}

/////////////////////////////////
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Getx PageTwo"),
          ),
        ),
        body: Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Center(child: Text("data")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.off(const PageOne());
                  },
                  child: const Text("off PageOne")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(const PageTwo());
                  },
                  child: const Text("go to PageTwo")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.offAll(const PageThree());
                  },
                  child: const Text("offAll PageThree")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("back")),
            ],
          ),
        ));
  }
}

////////////////////////////
class PageThree extends StatelessWidget {
  const PageThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Getx PageThree"),
          ),
        ),
        body: Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Center(child: Text("data")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(const PageOne());
                  },
                  child: const Text("go to PageOne")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.to(const PageTwo());
                  },
                  child: const Text("go to PageTwo")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.offAll(const PageThree());
                  },
                  child: const Text("offAll PageThree")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("back")),
            ],
          ),
        ));
  }
}

/////////////////////////////////
class NamedPages extends StatelessWidget {
  const NamedPages({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Getx NamedPages"),
          ),
        ),
        body: Container(
          color: Colors.amber,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Center(child: Text("data")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.toNamed("PageOne");
                  },
                  child: const Text("go toNamed PageOne")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.offNamed("PageTwo");
                  },
                  child: const Text("offNamed PageTwo")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.offAllNamed("PageThree");
                  },
                  child: const Text("offAllNamed PageThree")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("back")),
              MaterialButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("pop")),
            ],
          ),
        ));
  }
}
