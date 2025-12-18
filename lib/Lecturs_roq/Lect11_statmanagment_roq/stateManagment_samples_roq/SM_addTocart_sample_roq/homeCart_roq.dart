import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'checkOut_roq.dart';
import 'model/cartProvider_roq.dart';
import 'model/itemCart_roq.dart';

class HomeCart_Roq extends StatefulWidget {
  const HomeCart_Roq({Key? key}) : super(key: key);

  @override
  State<HomeCart_Roq> createState() => _HomeCart_RoqState();
}

class _HomeCart_RoqState extends State<HomeCart_Roq> {
  List<ItemCart_Roq> items_roq = [
    ItemCart_Roq(name: "Iphone", price: 2000),
    ItemCart_Roq(name: "Labtop", price: 8000),
    ItemCart_Roq(name: "Scanner", price: 2000),
    ItemCart_Roq(name: "Printer", price: 10000),
    ItemCart_Roq(name: "Keybord", price: 600),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product List"),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) {
                            return CheckOut_Roq();
                          }));
                    }, icon: Icon(Icons.add_shopping_cart)),
                Padding(
                    padding: const EdgeInsets.only(right: 4.0),
                    child: Consumer<CartProvider_Roq>(
                      builder: (context, cartProve_roq, child) {
                        return Text("${cartProve_roq.count}",style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),);
                      },
                    ))
              ],
            )
          ],
        ),
        body: Container(
          child: ListView.builder(
              itemCount: items_roq.length,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 5,
                    child: Consumer<CartProvider_Roq>(
                      builder: (context, cartProve_roq, child) {
                        return ListTile(
                          leading: Icon(Icons.icecream),
                          title: Text("${items_roq[index].name}"),
                          subtitle:
                          Text("    Price: ${items_roq[index].price}\$",style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12.0),),
                          trailing: IconButton(
                              icon: Icon(Icons.add_box_rounded),
                              onPressed: () {
                                cartProve_roq.addItemCart_fun(items_roq[index]);
                              }),
                        );
                      },
                    ));
              }),
        ));
  }
}
