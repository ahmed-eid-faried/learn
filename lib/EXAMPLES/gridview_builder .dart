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
      child: GridView.builder(
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
        itemCount: mobile.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("${mobile[index]["name"]}"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("core: ${mobile[index]["core"]}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("ram: ${mobile[index]["ram"]}"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("storage: ${mobile[index]["storage"]}"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("${mobile[index]["screen"]}"),
                  ),
                  Text("${mobile[index]["price"]}"),
                  const Icon(Icons.mobile_screen_share),
                ],
              ),
            ),
          );
        }, //mobile
      ),
    );
  }
}
