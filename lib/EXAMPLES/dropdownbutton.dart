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

// var hi = "HI BUTTONS";
var Selectedvalue;
var Selectedvalue2;
var Selectedvalue3;
var typeofselecteditem;

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
              Text("Selectedvalue1 =>$Selectedvalue"),
              Text("Selectedvalue2 => $Selectedvalue2"),
              Text("Selectedvalue3 => $Selectedvalue3"),
              Text("$typeofselecteditem"),
              const SizedBox(
                height: 20,
              ),
              DropdownButton(
                  hint: const Text("choose your country"),
                  value: Selectedvalue,
                  items: ["usa", "uae", "eg", "sa", "sy"]
                      //خلى بالك مش ينفع قيم الايتمز تحتوى على قيمتنا متساويتان خطا
                      .map((e) => DropdownMenuItem(
                          value: e, child: Text("I am from $e")))
                      .toList(),
                  onChanged: (e) {
                    setState(() {
                      Selectedvalue = e;
                      typeofselecteditem = "onChanged 1";
                    });
                    if (kDebugMode) {
                      print(e);
                    }
                  }),
              Container(
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  // child:DropdownButtonHideUnderline( //اخفاء الخط اللى اسفل
                  // child: DropdownButtonFormField( //  افتتاح قائمة تفويض للدرج داخل الاستمارة
                  child: DropdownButton(
                    items: ["usa", "uae", "eg", "sa", "sy"]
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Text("my country is $e"),
                            ))
                        .toList(),
                    hint: const Text("choose your country"),
                    underline: const Divider(
                      thickness: 0,
                    ),
                    onChanged: (value) {
                      setState(() => {
                            Selectedvalue2 = value,
                            typeofselecteditem = "onChanged 2"
                          });
                      if (kDebugMode) {
                        print(value);
                      }
                    },
                    value: Selectedvalue2,
                    dropdownColor: Colors.amberAccent,
                    icon: const Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                      // color: Color.fromARGB(255, 197, 4, 4),
                    ),
                    iconEnabledColor: const Color.fromARGB(255, 197, 4, 4),
                    iconSize: 30,
                    isExpanded: true,
                    onTap: () {
                      setState(() => {typeofselecteditem = "onTap 2"});
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
