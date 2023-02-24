import 'package:flutter/material.dart';

void main() => runApp(const ScrollControllerk());

class ScrollControllerk extends StatelessWidget {
  const ScrollControllerk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slider',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Slider'),
        ),
        body: const ScrollControllerp(),
      ),
    );
  }
}

class ScrollControllerp extends StatefulWidget {
  const ScrollControllerp({super.key});

  @override
  State<ScrollControllerp> createState() => _ScrollControllerpState();
}

class _ScrollControllerpState extends State<ScrollControllerp> {
  late ScrollController sc;
  @override
  void initState() {
    sc = ScrollController();
    sc.addListener(() {
      print(sc.offset);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: sc,
      children: [
        Row(
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  print(sc.position.maxScrollExtent);
                  sc.animateTo(sc.position.maxScrollExtent,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.bounceInOut);
                },
                icon: const Icon(Icons.arrow_downward),
                label: const Text("downward")),
            ElevatedButton.icon(
                onPressed: () {
                  print(sc.position.maxScrollExtent);
                  sc.jumpTo(100);
                },
                icon: const Icon(Icons.present_to_all),
                label: const Text("selected scroll")),
          ],
        ),
        ...List.generate(
            30,
            (index) => Padding(
                  padding: EdgeInsets.all(index.isEven ? 20 : 5),
                  child: Container(
                    height: 50,
                    color: index.isEven ? Colors.blue : Colors.amber,
                    //  Colors.blue,Colors.amber,
                    child: Center(child: Text("container nu. : $index")),
                  ),
                )),
        ElevatedButton.icon(
            onPressed: () {
              print(sc.position.minScrollExtent);
              sc.animateTo(sc.position.minScrollExtent,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInCirc);
            },
            icon: const Icon(Icons.arrow_upward),
            label: const Text("upward")),
      ],
    );
  }
}
