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
        // itemCount: mobile.length,
        childrenDelegate: SliverChildBuilderDelegate(
      childCount: mobile.length,
      (context, index) {
        return ListTile(
          selectedTileColor: Colors.amber,

          title: Text("${mobile[index]["name"]}"),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text("${mobile[index]["screen"]}"),
              ),
            ],
          ),
          trailing: Text("${mobile[index]["price"]}"),
          leading: const Icon(Icons.mobile_screen_share),
          iconColor: Colors.amber,
          // selected: true,
          selectedColor: Colors.amber,
          onTap: () {},
        );
      },
    ));
  }
}
