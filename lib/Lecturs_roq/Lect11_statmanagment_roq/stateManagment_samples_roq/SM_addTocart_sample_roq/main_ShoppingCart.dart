import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'homeCart_roq.dart';
import 'model/cartProvider_roq.dart';

class MainAddCart_Roq extends StatelessWidget {
  const MainAddCart_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return ChangeNotifierProvider(create: (context) {return CartProvider_Roq();},
    return ChangeNotifierProvider(create: (context)=> CartProvider_Roq(),
    child:MaterialApp(
    debugShowCheckedModeBanner: false,
    title:"Smart Home",
    home:HomeCart_Roq())
    );
  }
}

