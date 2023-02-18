import 'package:flutter/material.dart';

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
        body: const ListViewpp(),
      ),
    );
  }
}

class ListViewpp extends StatelessWidget {
  const ListViewpp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity / 2,
      width: double.infinity / 2,
      child: ListView(
        scrollDirection: Axis.vertical,
        reverse: true, //يعكس ترتيب عناصره
        shrinkWrap: true, // ياخذ حجم العناصر اللتى بداخله
        children: [
          Container(
              height: 200,
              width: 200,
              color: Colors.amber,
              child: const Text("outter")),
          Container(
              height: 200,
              width: 200,
              color: Colors.black,
              child: const Text("outter")),
          Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: const Text("outter")),
          SizedBox(
            height: 200,
            width: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              reverse: true, //يعكس ترتيب عناصره
              shrinkWrap: true, // ياخذ حجم العناصر اللتى بداخله
              children: [
                Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                    child: const Text("inner")),
                Container(
                    height: 200,
                    width: 200,
                    color: Colors.black,
                    child: const Text("inner")),
                Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                    child: const Text("inner")),
                Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    child: const Text("inner")),
                Container(
                    height: 200,
                    width: 200,
                    color: Colors.greenAccent,
                    child: const Text("inner")),
              ],
            ),
          ),
          Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: const Text("outter")),
          Container(
              height: 200,
              width: 200,
              color: Colors.greenAccent,
              child: const Text("outter")),
        ],
      ),
    );
  }
}
