import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/cartProvider_roq.dart';

class CheckOut_Roq extends StatelessWidget {
  CheckOut_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CheckOut"),
          actions: [
            Center(
              child: Consumer<CartProvider_Roq>(
                builder: (context, cartProve_roq, child) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Total Price: ${cartProve_roq.totlePric}\$"),
                  );
                },
              ),
            )
          ],
        ),
        body: Consumer<CartProvider_Roq>(
            builder: (context, cartProve_roq, child)
    {
      if (cartProve_roq.basketItemsProv.isEmpty) {
        return const Center(
            child: Text(
              'Your Cart is Empty',
              style:
              TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ));
      } else {
      return
        ListView.builder(
            itemCount: cartProve_roq.basketItemsProv.length,
            itemBuilder: (context, index) {
              return Card(
                  elevation: 5,
                  child: ListTile(
                    leading: Icon(Icons.icecream),
                    title:
                    Text("${cartProve_roq.basketItemsProv[index].name}"),
                    subtitle: Text(
                        "    Price: ${cartProve_roq.basketItemsProv[index]
                            .price}\$"),
                    trailing: IconButton(
                        icon: Icon(Icons.remove_circle),
                        onPressed: () {
                          cartProve_roq.removeItemCart_fun(
                              cartProve_roq.basketItemsProv[index]);
                        }),
                  ));
            });
    }
        }));
  }
}
