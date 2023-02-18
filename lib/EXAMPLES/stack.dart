import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Exampleone());
}

class Exampleone extends StatefulWidget {
  const Exampleone({super.key});

  @override
  State<Exampleone> createState() => _ExampleoneState();
}

class _ExampleoneState extends State<Exampleone> {
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("hi ahmed"),
        ),
        drawer: const Drawer(child: Text("hi ahmed")),
        body: Container(
          width: double.infinity,
          color: Colors.yellowAccent,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              IndexedStack(index: 2, children: [
                Container(
                  width: 500,
                  height: 300,
                  color: Colors.cyan,
                ),
                Container(
                  width: 500,
                  height: 300,
                  color: Colors.amberAccent,
                ),
                Container(
                  width: 500,
                  height: 300,
                  color: Colors.purple,
                ),
                Container(
                  width: 500,
                  height: 300,
                  color: Colors.blue,
                ),
                Container(
                  width: 500,
                  height: 300,
                  color: Colors.deepOrange,
                )
              ]),
              Center(
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          i++;
                        });
                      },
                      icon: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blueGrey,
                        child: const Center(
                          child: Text(
                            "hi ahmed",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )))
            ]),
          ),
        ),
      ),
    );
  }
}
