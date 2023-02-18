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
        body: Radiol(),
      ),
    );
  }
}

class Radiol extends StatefulWidget {
  const Radiol({super.key});

  @override
  State<Radiol> createState() => _RadiolState();
}

class _RadiolState extends State<Radiol> {
  var car;
  var car2;
  var valRadioListTile;

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
                  "Radio",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          //valueلازم تب القيم مختلفة علشان مش يتم تعلمهم كلهم
          //groupValue يجب تعريف متغير لكل مجموعة من الاختيارات يتم الاختيار من بينهم حتى لا يخلط الامر
          Row(
            children: [
              const Text("car1"),
              Radio(
                  activeColor: Colors.amber,
                  value: "car1",
                  groupValue: car,
                  onChanged: (val) {
                    setState(() {
                      car = val;
                    });
                  }),
            ],
          ),
          Row(
            children: [
              const Text("car2"),
              Radio(
                  activeColor: Colors.blue,
                  value: "car2",
                  groupValue: car,
                  onChanged: (val) {
                    setState(() {
                      car = val;
                    });
                  }),
            ],
          ),
          Row(
            children: [
              const Text("car3"),
              Radio(
                  activeColor: Colors.red,
                  value: "car3",
                  groupValue: car,
                  onChanged: (val) {
                    setState(() {
                      car = val;
                    });
                  }),
            ],
          ),
          Container(
              color: Colors.red[700],
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Radio 2",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          //valueلازم تب القيم مختلفة علشان مش يتم تعلمهم كلهم
          //groupValue يجب تعريف متغير لكل مجموعة من الاختيارات يتم الاختيار من بينهم حتى لا يخلط الامر
          Row(
            children: [
              const Text("car1"),
              Radio(
                  activeColor: Colors.amber,
                  value: "car1",
                  groupValue: car2,
                  onChanged: (val) {
                    setState(() {
                      car2 = val;
                    });
                  }),
            ],
          ),
          Row(
            children: [
              const Text("car2"),
              Radio(
                  activeColor: Colors.blue,
                  value: "car2",
                  groupValue: car2,
                  onChanged: (val) {
                    setState(() {
                      car2 = val;
                    });
                  }),
            ],
          ),
          Row(
            children: [
              const Text("car3"),
              Radio(
                  activeColor: Colors.red,
                  value: "car3",
                  groupValue: car2,
                  onChanged: (val) {
                    setState(() {
                      car2 = val;
                    });
                  }),
            ],
          ),
          Container(
              color: Colors.amber[700],
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Radio list title",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          RadioListTile(
              activeColor: Colors.deepPurple,
              selected: valRadioListTile == "usa" ? true : false,
              secondary: const Icon(Icons.abc),
              title: const Text(" country usa"),
              subtitle: const Text("usa"),
              // controlAffinity: ListTileControlAffinity.trailing,
              value: "usa",
              groupValue: valRadioListTile,
              onChanged: (val) {
                setState(() {
                  valRadioListTile = val;
                });
              }),
          RadioListTile(
              activeColor: Colors.greenAccent,
              selected: valRadioListTile == "uae" ? true : false,
              secondary: const Icon(Icons.abc),
              title: const Text(" country uae"),
              subtitle: const Text("uae"),
              // controlAffinity: ListTileControlAffinity.trailing,
              value: "uae",
              groupValue: valRadioListTile,
              onChanged: (val) {
                setState(() {
                  valRadioListTile = val;
                });
              }),
          RadioListTile(
              activeColor: Colors.red,
              selected: valRadioListTile == "sa" ? true : false,
              secondary: const Icon(Icons.abc),
              title: const Text(" country sa"),
              subtitle: const Text("sa"),
              controlAffinity: ListTileControlAffinity.trailing,
              value: "sa",
              groupValue: valRadioListTile,
              onChanged: (val) {
                setState(() {
                  valRadioListTile = val;
                });
              }),
          RadioListTile(
              selectedTileColor: Colors.purple,
              activeColor: Colors.blueAccent,
              selected: valRadioListTile == "eg" ? true : false,
              secondary: const Icon(Icons.abc),
              title: const Text(" country eg"),
              subtitle: const Text("eg"),
              // controlAffinity: ListTileControlAffinity.trailing,
              value: "eg",
              groupValue: valRadioListTile,
              onChanged: (val) {
                setState(() {
                  valRadioListTile = val;
                });
              }),
        ],
      ),
    );
  }
}
