import 'package:flutter/material.dart';

void main() => runApp(const Showmodelbottomsheetk());

class Showmodelbottomsheetk extends StatelessWidget {
  const Showmodelbottomsheetk({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Slider',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Slider'),
        ),
        body: const ShowmodelbottomsheetP(),
      ),
    );
  }
}

class ShowmodelbottomsheetP extends StatefulWidget {
  const ShowmodelbottomsheetP({super.key});

  @override
  State<ShowmodelbottomsheetP> createState() => _ShowmodelbottomsheetPState();
}

class _ShowmodelbottomsheetPState extends State<ShowmodelbottomsheetP> {
  // late ScrollController sc;
  // @override
  // void initState() {
  //   sc = ScrollController();
  //   sc.addListener(() {
  //     print(sc.offset);
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                        height: 200,
                        color: Colors.blueAccent,
                        child: const Center(child: Text("Showmodelbottomsheet")));
                  });
            },
            icon: const Icon(Icons.show_chart),
            label: const Text("Showmodelbottomsheet")),
      ),
    );
  }
}
