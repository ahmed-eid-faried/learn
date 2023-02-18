import 'package:flutter/material.dart';
import 'package:learn/EXAMPLES/data.dart';

void main() => runApp(const ListViewl());

class ListViewl extends StatelessWidget {
  const ListViewl({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListViewl'),
        ),
        body: ListViewpp(),
      ),
    );
  }
}

class ListViewpp extends StatelessWidget {
  ListViewpp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.custom(
        childrenDelegate: SliverChildListDelegate([
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.blue,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.blue,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.blue,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.blue,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.blue,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.blue,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.blue,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.amber,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          color: Colors.blue,
          child: const Text(
            "data",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    ]));
  }
}
