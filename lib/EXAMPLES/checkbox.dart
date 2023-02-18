import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: CheckBox(),
      ),
    );
  }
}

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool usa = false;
  bool eg = false;
  bool checkboxListTile = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              color: Colors.amber[700],
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Check Box",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                "usa",
                style: TextStyle(color: Colors.amber),
              ),
              Checkbox(
                  activeColor: Colors.amber,
                  checkColor: Colors.white,
                  value: usa,
                  //bool? val   هام ?
                  onChanged: (bool? val) {
                    print("hi $usa");
                    setState(() {
                      // usa = val!;     هام ! علشان ال null
                      usa = val!;
                    });
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Checkbox(
                  activeColor: Colors.amber,
                  checkColor: Colors.white,
                  value: eg,
                  //bool? val   هام ?
                  onChanged: (bool? val) {
                    print("hi $eg");
                    setState(() {
                      // usa = val!;     هام ! علشان ال null
                      eg = val!;
                    });
                  }),
              const Text(
                "eg",
                style: TextStyle(color: Colors.amber),
              ),
            ],
          ),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity
                  .platform, //اختيار موضع علامة الاختيار قبل ولا بعد
              activeColor: Colors.white,
              checkColor: Colors.amber,
              value: checkboxListTile, //اختيار القيمة
              selected: checkboxListTile, // اختيار اللون حسب القيمة
              tileColor: Colors.amber[200], // اختيار الون الاصلى فى حالة فولس
              selectedTileColor:
                  Colors.amber[700], // اختيار الون الاصلى فى حالة تروه
              secondary: const Icon(Icons.flag),
              title: const Text("checkboxListTile Tile",
                  style: TextStyle(color: Colors.white)),
              subtitle: const Text(
                "subtitle",
                // style: TextStyle(color: Colors.blueAccent)
              ),
              isThreeLine: true,
              onChanged: (bool? val) {
                print("hi $checkboxListTile");
                setState(() {
                  // usa = val!;     هام ! علشان ال null
                  checkboxListTile = val!;
                });
              }),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity
                  .leading, //اختيار موضع علامة الاختيار قبل ولا بعد
              activeColor: Colors.amber,
              checkColor: Colors.white,
              value: checkboxListTile, //اختيار القيمة
              selected: checkboxListTile, // اختيار اللون حسب القيمة
              // tileColor: Colors.amber[200], // اختيار الون الاصلى فى حالة فولس
              // selectedTileColor:
              //     Colors.amber[700], // اختيار الون الاصلى فى حالة تروه
              secondary: const Icon(Icons.flag),
              title: const Text(
                "checkboxListTile Tile",
                // style: TextStyle(color: Colors.white)
              ),
              subtitle: const Text(
                "subtitle",
                // style: TextStyle(color: Colors.blueAccent)
              ),
              isThreeLine: true,
              onChanged: (bool? val) {
                print("hi $checkboxListTile");
                setState(() {
                  // usa = val!;     هام ! علشان ال null
                  checkboxListTile = val!;
                });
              })
        ],
      ),
    );
  }
}
