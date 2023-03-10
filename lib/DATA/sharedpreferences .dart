import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        "home": (context) {
          return Sharedpreferences();
        },
        "TestPage": (x) => const TestPage(),
      },
      home: Sharedpreferences(),
    );
  }
}

class Sharedpreferences extends StatefulWidget {
  Sharedpreferences({super.key});

  @override
  State<Sharedpreferences> createState() => _SharedpreferencesState();
}

class _SharedpreferencesState extends State<Sharedpreferences> {
//   int? counter;
//   bool? repeat;
//   double? decimal;
//   String? action;
//  String? items1;
//   String? items2;
//   List<String>? items;

  Future save() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 10);
    await prefs.setBool('repeat', true);
    await prefs.setDouble('decimal', 1.5);
    await prefs.setString('action', 'Start');
    await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);
    // await prefs.setInt('counter', counter ?? 0);
    // await prefs.setBool('repeat', repeat ?? true);
    // await prefs.setDouble('decimal', decimal ?? 1.1);
    // await prefs.setString('action', action ?? "ah");
    // await prefs
    //     .setStringList('items', <String>[items1 ?? "ah", items2 ?? "alsh"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SAVE"),
      ),
      body: Column(
        children: [
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: "Enter your counter",
          //   ),
          //   onChanged: (value) {
          //     counter = value as int?;
          //   },
          // ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: "Enter your repeat",
          //   ),
          //   onChanged: (value) {
          //     repeat = value as bool?;
          //   },
          // ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: "Enter your decimal",
          //   ),
          //   onChanged: (value) {
          //     decimal = value as double?;
          //   },
          // ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: "Enter your action",
          //   ),
          //   onChanged: (value) {
          //     action = value;
          //   },
          // ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: "Enter your items1",
          //   ),
          //   onChanged: (value) {
          //     items1 = value;
          //   },
          // ),
          // TextFormField(
          //   decoration: const InputDecoration(
          //     labelText: "Enter your items2",
          //   ),
          //   onChanged: (value) {
          //     items2 = value;
          //   },
          // ),
          ElevatedButton(onPressed: save, child: const Text("save")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "TestPage");
              },
              child: const Text("go to test page")),
        ],
      ),
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int? counter;
  bool? repeat;
  double? decimal;
  String? action;
  List<String>? items;
  Future get() async {
    final prefs = await SharedPreferences.getInstance();
// get  value from key.
    setState(() {
      counter = prefs.getInt('counter');
      repeat = prefs.getBool('repeat');
      decimal = prefs.getDouble('decimal');
      action = prefs.getString('action');
      items = prefs.getStringList('items');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("test page"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                get();
              },
              child: const Text("get")),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "home");
              },
              child: const Text("home")),
          // const ElevatedButton(onPressed: save, child: Text("save") ),
          counter == null ? const Text("null") : Text("$counter"),
          repeat == null ? const Text("null") : Text("$repeat"),
          decimal == null ? const Text("null") : Text("$decimal"),
          action == null ? const Text("null") : Text("$action"),
          items == null ? const Text("null") : Text("$items"),
        ],
      ),
    );
  }
}
