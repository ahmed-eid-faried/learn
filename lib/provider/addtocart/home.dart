import 'package:flutter/material.dart';
import 'package:learn/provider/addtocart/Cartprovider.dart';
import 'package:learn/provider/addtocart/checkoutlist.dart';
import 'package:provider/provider.dart';

import 'item.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider<Cart>(
      create: (context) => Cart(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      title: "hi",
      routes: {
        "CheckoutList": (context) => CheckoutList(key: key),
      },
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      Item(
          name: "ahmed", price: 100, desc: "this is the best product for you."),
      Item(
          name: "ahmed", price: 200, desc: "this is the best product for you."),
      Item(
          name: "ahmed", price: 300, desc: "this is the best product for you."),
      Item(
          name: "ahmed", price: 400, desc: "this is the best product for you."),
      Item(
          name: "ahmed", price: 820, desc: "this is the best product for you."),
      Item(
          name: "ahmed", price: 219, desc: "this is the best product for you."),
    ];
    return BodyOfHome(items: items);
  }
}

class BodyOfHome extends StatelessWidget {
  const BodyOfHome({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("My Shop")),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("CheckoutList");
                  },
                  icon: const Icon(Icons.shopping_cart_rounded)),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text("${model.getCounter}"),
              )
            ],
          )
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, int index) {
          return Card(
              child: ListTile(
                  title: Row(
                    children: [
                      Text(items[index].name),
                      Text(items[index].price.toString()),
                    ],
                  ),
                  subtitle: Text(items[index].desc),
                  trailing: IconButton(
                    onPressed: () {
                      model.addItem(items[index]);
                    },
                    icon: const Icon(Icons.add),
                  )));
        },
      ),
    );
  }
}
