import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Drawerw());
}

class Drawerw extends StatelessWidget {
  const Drawerw({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hi ahmed',
      home: TABS(),
    );
  }
}

class Drawerwww extends StatelessWidget {
  Drawerwww({
    super.key,
  });
  // GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          drawerScrimColor: Colors.amber.withOpacity(0.3),
          appBar: AppBar(
            title: const Text("Tabs"),
            centerTitle: true,
            bottom: const TabBar(tabs: [
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
          )),
    );
  }
}

class TABS extends StatelessWidget {
  const TABS({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              isScrollable: true,
              // indicator: ,
              indicatorColor: Colors.amber,
              indicatorPadding: const EdgeInsets.all(5),
              indicatorWeight: 3,
              labelColor: Colors.white12,
              onTap: (value) {
                print(value);
              },
              tabs: const [
                Tab(text: "tab a", icon: Icon(Icons.add)),
                Tab(text: "tab b", icon: Icon(Icons.place)),
                Tab(text: "tab c", icon: Icon(Icons.outbond)),
                Tab(text: "tab d", icon: Icon(Icons.holiday_village_sharp)),
                Tab(text: "tab e", icon: Icon(Icons.six_ft_apart)),
                // Tab(text: "tab e", icon: Icon(Icons.six_ft_apart)),
              ],
            ),
          ),
          body: TabBarView(children: [
            Container(
              width: double.infinity,
              color: Colors.deepPurple,
              child: const Center(
                  child: Text("tab a", style: TextStyle(fontSize: 35))),
            ),
            Container(
              width: double.infinity,
              color: Colors.orange,
              child: const Center(
                  child: Text("tab b", style: TextStyle(fontSize: 35))),
            ),
            Container(
              width: double.infinity,
              color: Colors.greenAccent,
              child: const Center(
                  child: Text("tab c", style: TextStyle(fontSize: 35))),
            ),
            Container(
              width: double.infinity,
              color: Colors.redAccent,
              child: const Center(
                  child: Text("tab d", style: TextStyle(fontSize: 35))),
            ),
            Container(
              width: double.infinity,
              color: Colors.amber,
              child: const Center(
                  child: Text("tab e", style: TextStyle(fontSize: 35))),
            ),
          ]),
        ));
  }
}
