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

class KPageviewK extends StatefulWidget {
  const KPageviewK({
    super.key,
  });

  @override
  State<KPageviewK> createState() => _KPageviewKState();
}

class _KPageviewKState extends State<KPageviewK> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerScrimColor: Colors.amber.withOpacity(0.3),
        appBar: AppBar(
          title: const Text("Tabs"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        // body: pages.elementAt(i));
        body: PageView(
          onPageChanged: (x) {
            print("my page is $x");
          },
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.amber,
              child: const Text("data 1"),
            ),
            Container(
              color: Colors.purpleAccent,
              child: const Text("data 2"),
            ),
            Container(
              color: Colors.blue,
              child: const Text("data 3"),
            ),
            Container(
              color: Colors.grey,
              child: const Text("data 5"),
            ),
            Container(
              color: Colors.greenAccent,
              child: const Text("data 6"),
            )
          ],
        ));
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
  @override
  void initState() {
    cp = PageController(
      initialPage: 2,
      keepPage: true,
      viewportFraction: 0.5, //مقدار ما يعرضمن حجم العنصر
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
        body: PageView(
          controller: cp,
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.amber,
              child: Column(
                children: [
                  const Text("data 1"),
                  ElevatedButton(
                    onPressed: () {
                      cp.jumpToPage(3);
                      // cp.animateToPage(5,
                      //     duration: const Duration(seconds: 2), curve: Curves.easeIn);
                    },
                    child: const Text("GO TO data 3"),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.purpleAccent,
              child: const Text("data 2"),
            ),
            Container(
              color: Colors.amber,
              child: Column(
                children: [
                  const Text("data 3"),
                  ElevatedButton(
                    onPressed: () {
                      // cp.jumpToPage(3);
                      cp.animateToPage(5,
                          duration: const Duration(seconds: 2),
                          curve: Curves.easeIn);
                    },
                    child: const Text("GO TO data 5"),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.grey,
              child: const Text("data 5"),
            ),
            Container(
              color: Colors.greenAccent,
              child: const Text("data 6"),
            )
          ],
        ));
  }
}
