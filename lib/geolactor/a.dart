import 'package:flutter/material.dart';
// import 'package:odbc/odbc.dart';

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Databaase(),
    );
  }
}

class Databaase extends StatelessWidget {
  const Databaase({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
    );
  }
}
