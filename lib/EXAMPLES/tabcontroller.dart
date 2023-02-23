import 'package:flutter/material.dart';

void main() {
  runApp(const TabControllerr());
}

class TabControllerr extends StatelessWidget {
  const TabControllerr({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hi ahmed',
      home: TabControllerk(),
    );
  }
}

class TabControllerk extends StatefulWidget {
  const TabControllerk({
    super.key,
  });

  @override
  State<TabControllerk> createState() => _TabControllerkState();
}

class _TabControllerkState extends State<TabControllerk>
    with SingleTickerProviderStateMixin {
  // GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  late TabController mycontroller;

  @override
  void initState() {
    mycontroller = TabController(length: 5, initialIndex: 2, vsync: this);
    print("ahmed");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerScrimColor: Colors.amber.withOpacity(0.3),
        appBar: AppBar(
          title: const Text("Tabs"),
          centerTitle: true,
          bottom: TabBar(controller: mycontroller, tabs: const [
            Tab(
              text: "tab 1",
              icon: Icon(Icons.abc),
            ),
            Tab(
              text: "tab 2",
              icon: Icon(Icons.abc_outlined),
            ),
            Tab(
              text: "tab 3",
              icon: Icon(Icons.abc_rounded),
            ),
            Tab(
              text: "tab 4",
              icon: Icon(Icons.add),
            ),
            Tab(
              text: "tab 5",
              icon: Icon(Icons.baby_changing_station_outlined),
            ),
          ]),
          backgroundColor: Colors.amber,
        ),
        body: TabBarView(
          controller: mycontroller,
          children: [
            Container(
              width: double.infinity,
              color: Colors.deepPurple,
              child: const Center(child: Text("tab 1")),
            ),
            Container(
              width: double.infinity,
              color: Colors.red,
              child: const Center(child: Text("tab 2")),
            ),
            Container(
              width: double.infinity,
              color: Colors.green,
              child: const Center(child: Text("tab 3")),
            ),
            Container(
              width: double.infinity,
              color: Colors.yellow,
              child: const Center(child: Text("tab 4")),
            ),
            Container(
              width: double.infinity,
              color: Colors.amberAccent,
              child: Column(
                children: const [
                  Center(child: Text("tab 5")),
                ],
              ),
            ),
          ],
        ));
  }
}
