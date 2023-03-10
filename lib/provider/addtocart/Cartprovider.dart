import 'package:flutter/material.dart';
import 'package:learn/provider/addtocart/item.dart';

class Cart extends ChangeNotifier {
  int _counter = 0;
  double _totalprice = 0.0;
  List<Item> _itemsOfCheckout = [];
  int get getCounter => _counter;
  double get getTotalPrice => _totalprice;
  List<Item> get getItemsOfCheckout => _itemsOfCheckout;

  addItem(Item item) {
    _counter++;
    _totalprice += item.price;
    _itemsOfCheckout.add(item);
    notifyListeners();
  }

  removeItem(Item item) {
    _counter--;
    _totalprice -= item.price;
    _itemsOfCheckout.remove(item);
    notifyListeners();
  }
}
