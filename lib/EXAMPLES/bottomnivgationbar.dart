import 'package:flutter/material.dart';

void main() {
  runApp(const bottomnivgationbar());
}

class bottomnivgationbar extends StatelessWidget {
  const bottomnivgationbar({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,  
      title: 'hi ahmed',
      home: Kbottomnivgationbar(),
    );
  }
}

class Kbottomnivgationbar extends StatefulWidget {
  const Kbottomnivgationbar({
    super.key,
  });

  @override
  State<Kbottomnivgationbar> createState() => _KbottomnivgationbarState();
}

class _KbottomnivgationbarState extends State<Kbottomnivgationbar> {
  int i = 0;
  var pages = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerScrimColor: Colors.amber.withOpacity(0.3),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                i = value;
              });
              print(i);
            },
            currentIndex: i,
            backgroundColor: Colors.blue, //error
            unselectedItemColor: Colors.amber,
            selectedItemColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(label: "A", icon: Icon(Icons.abc)),
              BottomNavigationBarItem(label: "b", icon: Icon(Icons.abc)),
              BottomNavigationBarItem(label: "c", icon: Icon(Icons.abc)),
              BottomNavigationBarItem(label: "d", icon: Icon(Icons.abc)),
              BottomNavigationBarItem(label: "e", icon: Icon(Icons.abc)),
            ]),
        appBar: AppBar(
          title: const Text("Tabs"),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: pages.elementAt(i));
  }
}
