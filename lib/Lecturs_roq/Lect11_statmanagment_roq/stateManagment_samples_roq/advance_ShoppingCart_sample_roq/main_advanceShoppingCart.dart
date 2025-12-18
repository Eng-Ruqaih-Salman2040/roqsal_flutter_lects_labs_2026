import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/cart_provider.dart';
import 'screens/product_list.dart';

void main() {
  runApp(const MainShoppingCart_Roq());
}

class MainShoppingCart_Roq extends StatelessWidget {
  const MainShoppingCart_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Shopping Cart',
          theme: ThemeData(
            useMaterial3: true
          ),
          home: const ProductList(),
        );
      }),
    );
  }
}
