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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      // direction: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.cyan,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.amberAccent,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.deepOrange,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.cyan,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.amberAccent,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.deepOrange,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.cyan,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.amberAccent,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.deepOrange,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.cyan,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.amberAccent,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.purple,
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Wrap(
                    // direction: Axis.horizontal,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.cyan,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.amberAccent,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.purple,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.cyan,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.amberAccent,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.purple,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.cyan,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.amberAccent,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.purple,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.cyan,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.amberAccent,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.purple,
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
