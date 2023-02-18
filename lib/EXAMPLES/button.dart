import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Exampleone());
}

class Exampleone extends StatefulWidget {
  const Exampleone({super.key});

  @override
  State<Exampleone> createState() => _ExampleoneState();
}

var hi = "HI BUTTONS";

class _ExampleoneState extends State<Exampleone> {
  @override
  Widget build(BuildContext context) {
    // int i = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HI BUTTONS"),
        ),
        drawer: const Drawer(child: Text("HI BUTTONS")),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(hi),
              const SizedBox(
                height: 20,
              ),

              //Raisedbutton
              ElevatedButton(
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(20),
                  shadowColor: MaterialStatePropertyAll(Colors.red),
                ),
                onPressed: () {
                  setState(() {
                    hi = "ElevatedButton";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                },
                child: const Text("ElevatedButton"),
              ),
              //FlatButton
              TextButton(
                onPressed: () {
                  setState(() {
                    hi = "TextButton";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                },
                child: const Text("TextButton"),
              ),
              // OutlineButton
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    hi = "OutlinedButton";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                },
                child: const Text("OutlinedButton"),
              ),

              IconButton(
                  color: Colors.blue,
                  splashColor: Colors.purple,
                  onPressed: () {
                    setState(() {
                      hi = "IconButton";
                    });
                    if (kDebugMode) {
                      print(hi);
                    }
                  },
                  icon: const Icon(Icons.ads_click)
                  // const Text("IconButton"),
                  ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    hi = "MaterialButton";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.ads_click),
                    Text("MaterialButton"),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    hi = "InkWell";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                },
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      "InkWell",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    hi = "GestureDetector onTap";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                  if (kDebugMode) {
                    print("onTap");
                  }
                },
                onTapDown: (k) {
                  setState(() {
                    hi = "GestureDetector onTapDown";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                  if (kDebugMode) {
                    print("onTapDown");
                  }
                },
                onTapUp: (onTapUp) {
                  setState(() {
                    hi = "GestureDetector onTapUp";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                  if (kDebugMode) {
                    print("onTapUp ");
                  }
                },
                onTapCancel: () {
                  setState(() {
                    hi = "GestureDetector onTapCancel";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                  if (kDebugMode) {
                    print("onTapCancel");
                  }
                },
                onDoubleTap: () {
                  setState(() {
                    hi = "GestureDetector onDoubleTap";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                  if (kDebugMode) {
                    print("onDoubleTap");
                  }
                },
                onLongPress: () {
                  setState(() {
                    hi = "GestureDetector onLongPress";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                  if (kDebugMode) {
                    print("onLongPress");
                  }
                },
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Text(
                      "GestureDetector",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    hi = "FloatingActionButton";
                  });
                  if (kDebugMode) {
                    print(hi);
                  }
                },
                splashColor: Colors.amber,
                child: const Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}
