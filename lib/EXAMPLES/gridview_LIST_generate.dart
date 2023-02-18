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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView(
        // ignore: prefer_const_constructors
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 1.0,
          mainAxisExtent: 120,
        ),
        // SliverGridDelegateWithFixedCrossAxisCount(
        //   crossAxisCount: 5,
        //   mainAxisSpacing: 2.0,
        //   crossAxisSpacing: 2.0,
        //   childAspectRatio: 1.0,
        //   mainAxisExtent: 120,
        // ),
        // itemCount: mobile.length,
        children: List.generate(mobile.length, (index) {
          return Container(
            color: const Color.fromRGBO(0, 188, 212, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //  "name": "mobile1",
                  // "price": "6000 \$",
                  // "screen": "120 inch",
                  // "core": "12",
                  // "ram": "8 GB",
                  // "storage": "500 GB"
                  Text("${mobile[index]["name"]}"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("core: ${mobile[index]["core"]}"),
                        Text("ram: ${mobile[index]["ram"]}"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("storage: ${mobile[index]["storage"]}"),
                        Text("${mobile[index]["screen"]}"),
                      ],
                    ),
                  ),
                  Text("${mobile[index]["price"]}"),
                ],
              ),
            ),
          );
        }), //mobile
      ),
    );
  }
}
