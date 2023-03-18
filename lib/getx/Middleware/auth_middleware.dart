import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize SharedPreferences
  sharedPref = await SharedPreferences.getInstance();
  runApp(App(sharedPreferences: sharedPref!));
}

class App extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  App({required this.sharedPreferences});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter',
      initialRoute: '/login',
      getPages: [
        GetPage(
            name: '/login',
            page: () => const Login(),
            middlewares: [AuthMiddleware1(), AuthMiddleware2()]),
        GetPage(name: '/logout', page: () => const Logout()),
        GetPage(
            name: '/SuperPageForAdmin', page: () => const SuperPageForAdmin()),
      ],
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                // Set 'isLogged' to true in SharedPreferences
                await sharedPref?.setInt('isLogged', 1);
                Get.offAllNamed('/logout');
              },
              child: const Text("login"),
            ),
          ),
        ],
      ),
    );
  }
}

class Logout extends StatelessWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("middleware getx"),
        ),
      ),
      body: Container(
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  // Set 'isLogged' to false in SharedPreferences
                  Get.offAllNamed('/SuperPageForAdmin');
                },
                child: const Text("go to Super Page For Admin"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  Get.offAllNamed('/login');
                },
                child: const Text("logout WITHOUT CLEAR"),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await sharedPref?.clear();
                // await sharedPref?.remove('isLogged');

                Get.offAllNamed('/login');
              },
              child: const Text("logout"),
            ),
          ],
        ),
      ),
    );
  }
}

class SuperPageForAdmin extends StatelessWidget {
  const SuperPageForAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("middleware getx  <<==>> super page"),
        ),
      ),
      body: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () async {
                // Set 'isLogged' to false in SharedPreferences
                await sharedPref?.setInt('Super', 1);
              },
              child: const Text("set this page first"),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  Get.offAllNamed('/login');
                },
                child: const Text("logout WITHOUT CLEAR"),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  await sharedPref?.clear();
                  // await sharedPref?.remove('Super');
                  Get.offAllNamed('/login');
                },
                child: const Text("logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthMiddleware1 extends GetMiddleware {
  @override
  get priority => 2;
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getInt('isLogged') != null) {
      print("AuthMiddleware1 $route ==>> /logout");

      return const RouteSettings(name: '/logout');
    }
  }
}

class AuthMiddleware2 extends GetMiddleware {
  @override
  // int? get priority => 1;
  // get priority => 1;
  get priority => 3;

  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getInt('Super') != null) {
      print("AuthMiddleware2 $route ==>> /SuperPageForAdmin");
      return const RouteSettings(name: '/SuperPageForAdmin');
    }
  }
}
