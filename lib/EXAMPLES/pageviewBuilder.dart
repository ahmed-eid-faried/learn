// import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const PageviewK());
}

class PageviewK extends StatelessWidget {
  const PageviewK({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.trackpad,
          PointerDeviceKind.stylus,
          PointerDeviceKind.invertedStylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'hi ahmed',
      home: const KPageviewKkk(),
    );
  }
}

class KPageviewKkk extends StatefulWidget {
  const KPageviewKkk({
    super.key,
  });

  @override
  State<KPageviewKkk> createState() => _KPageviewKkkState();
}

class _KPageviewKkkState extends State<KPageviewKkk> {
  late PageController cp;
  List pictures = [
    {"url": "images/1.png"},
    {"url": "images/2.png"},
    {"url": "images/3.jfif"},
  ];

  get ture => null;
  @override
  void initState() {
    cp = PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 0.7, //مقدار ما يعرضمن حجم العنصر
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerScrimColor: Colors.amber.withOpacity(0.3),
        appBar: AppBar(
          title: const Text("Tabs"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: PageView.builder(
            reverse: true,
            controller: cp,
            scrollDirection: Axis.horizontal,
            itemCount: pictures.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.amber,
                child: Image.asset(
                  pictures[index]["url"],
                  fit: BoxFit.fill,
                ),
              );
            }));
  }
}
