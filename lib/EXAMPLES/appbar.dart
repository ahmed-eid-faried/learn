import 'package:flutter/material.dart';

void main() {
  runApp(const AppBarw());
}

class AppBarw extends StatelessWidget {
  const AppBarw({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'hi ahmed',
      home: AppBarwww(),
    );
  }
}

class AppBarwww extends StatelessWidget {
  const AppBarwww({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.ac_unit),
          title: const Text("Title"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.nat_sharp)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.deblur)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code))
          ],
          elevation: 35,
          shadowColor: Colors.amber[900],
          // flexibleSpace: Container(color: Colors.greenAccent),
          //error  // bottom:            PreferredSizeWidgetsize: 80, preferredSize: Size(100, 100),
          scrolledUnderElevation: 10, backgroundColor: Colors.amber,
        ),
        // drawer: const Text("hi ahmed"),
        body: Container());
  }
}
