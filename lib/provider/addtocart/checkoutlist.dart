import 'package:flutter/material.dart';
import 'package:learn/provider/addtocart/Cartprovider.dart';
import 'package:provider/provider.dart';
import 'item.dart';

class CheckoutList extends StatelessWidget {
  const CheckoutList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AddOfCart();
  }
}

class AddOfCart extends StatelessWidget {
  const AddOfCart({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<Cart>(context);
    List<Item> modeloflist = model.getItemsOfCheckout;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Checkout List")),
      ),
      body: ListView.builder(
        itemCount: modeloflist.length,
        itemBuilder: (context, int index) {
          return Card(
              child: ListTile(
                  title: Row(
                    children: [
                      Text(modeloflist[index].name),
                      Text(modeloflist[index].price.toString()),
                    ],
                  ),
                  subtitle: Text(modeloflist[index].desc),
                  trailing: IconButton(
                    onPressed: () {
                      model.removeItem(modeloflist[index]);
                    },
                    icon: const Icon(Icons.remove_shopping_cart),
                  )));
        },
      ),
    );
  }
}
