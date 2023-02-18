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
    var x = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        //750<2
        //750+>3
        //1100+>4
        //1350+>5
        crossAxisCount: x > 750 ? (x > 1100 ? (x > 1350 ? 5 : 4) : 3) : 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 1.0,

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
                  Text("$x"),
                  //750<2
                  //750+>3
                  //1100+>4
                  //1350+>5

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
