import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'itemCart_roq.dart';

class CartProvider_Roq with ChangeNotifier {
  List<ItemCart_Roq> itemsProv = [];
  double priceProv = 0.0;

  void addItemCart_fun(ItemCart_Roq item) {
    itemsProv.add(item);
    priceProv += item.price;
    notifyListeners();
  }

  void removeItemCart_fun(ItemCart_Roq item) {
    itemsProv.remove(item);
    priceProv -= item.price;
    notifyListeners();
  }

  int get count {
    return itemsProv.length;
  }

  double get totlePric => priceProv;

  List<ItemCart_Roq> get basketItemsProv => itemsProv;
}
