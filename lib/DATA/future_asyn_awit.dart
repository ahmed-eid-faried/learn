import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    fun1();
    fun2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("future & async & await"),
        ),
        body: Container(
          color: Colors.amber,
        ),
      ),
    );
  }
}

Future fun1() async {
  var a;
  print("=========fun1 start");
  await Future.delayed(const Duration(seconds: 3), () {
    a = 10;
    print("=========fun1 ahmed");
  });
  print("=========fun1 end $a");
}

Future fun2() async {
  var b;
  print("fun2 start");
  Future.delayed(const Duration(seconds: 3), () {
    b = 10;
    print("fun2 ahmed");
  });
  print("fun2 end $b");
}

  // fun1();
  // fun2();