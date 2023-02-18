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
        body: Switchl(),
      ),
    );
  }
}

class Switchl extends StatefulWidget {
  const Switchl({super.key});

  @override
  State<Switchl> createState() => _SwitchlState();
}

class _SwitchlState extends State<Switchl> {
  var notify = false;
  var notify1 = false;
  var notify2 = false;
  var notify22 = false;
  var notify222 = false;

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
                  "Switch",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          //valueلازم تب القيم مختلفة علشان مش يتم تعلمهم كلهم
          //groupValue يجب تعريف متغير لكل مجموعة من الاختيارات يتم الاختيار من بينهم حتى لا يخلط الامر
          Row(
            children: [
              const Text("هل تريد اظهار الأشعارات؟"),
              Switch(
                  value: notify,
                  onChanged: (val) {
                    setState(() {
                      notify = val;
                    });
                  }),
            ],
          ),
          Row(
            children: [
              const Text("هل تريد اظهار الأشعارات؟"),
              Switch(
                  activeColor: Colors.red,
                  activeTrackColor: Colors.amber,
                  inactiveThumbColor: Colors.blueGrey,
                  inactiveTrackColor: Colors.grey,
                  value: notify1,
                  onChanged: (val) {
                    setState(() {
                      notify1 = val;
                    });
                  }),
            ],
          ),
          SwitchListTile(
              title: const Text("هل تريد اظهار الأشعارات؟"),
              subtitle: const Text("تظهر اشعارات بواسطة الاعتبار"),
              secondary: const Icon(Icons.switch_access_shortcut_add),
              // controlAffinity: ListTileControlAffinity.trailing,
              value: notify2,
              onChanged: (val) {
                setState(() {
                  notify2 = val;
                });
              }),
          SwitchListTile(
              activeColor: Colors.amber,
              selected: notify2,
              title: const Text("هل تريد اظهار الأشعارات؟"),
              subtitle: const Text("تظهر اشعارات بواسطة الاعتبار"),
              secondary: const Icon(Icons.switch_access_shortcut_add),
              controlAffinity: ListTileControlAffinity.trailing,
              value: notify22,
              onChanged: (val) {
                setState(() {
                  notify22 = val;
                });
              }),
          SwitchListTile(
              activeColor: Colors.red,
              activeTrackColor: Colors.amber,
              inactiveThumbColor: Colors.blueGrey,
              inactiveTrackColor: Colors.grey,
              title: const Text("هل تريد اظهار الأشعارات؟"),
              subtitle: const Text("تظهر اشعارات بواسطة الاعتبار"),
              secondary: const Icon(Icons.switch_access_shortcut_add),
              // controlAffinity: ListTileControlAffinity.trailing,
              value: notify222,
              onChanged: (val) {
                setState(() {
                  notify222 = val;
                });
              }),
        ],
      ),
    );
  }
}
