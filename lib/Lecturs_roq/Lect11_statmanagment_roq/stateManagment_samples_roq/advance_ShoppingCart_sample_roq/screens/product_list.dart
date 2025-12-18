import 'package:badges/badges.dart' as badge_roq;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/consestent_roq.dart';
import '../model/item_model.dart';
import '../provider/cart_provider.dart';
import '../database/db_helper.dart';
import '../model/cart_model.dart';
import '../screens/cart_screen.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  DBHelper dbHelper = DBHelper();
  List<Item> products = [
    Item(
        name: 'Apple', 
        unit: 'Kg', 
        price: 20, 
        image: '$imagePath/apple.png'),
    Item(
        name: 'Mango',
        unit: 'Doz',
        price: 30,
        image: '$imagePath/mango.png'),
    Item(
        name: 'Banana',
        unit: 'Doz',
        price: 10,
        image: '$imagePath/banana.png'),
    Item(
        name: 'Grapes',
        unit: 'Kg',
        price: 8,
        image: '$imagePath/grapes.png'),
    Item(
        name: 'Water Melon',
        unit: 'Kg',
        price: 25,
        image: '$imagePath/watermelon.png'),
    Item(name: 'Kiwi', unit: 'Pc', price: 40, image: '$imagePath/kiwi.png'),
    Item(
        name: 'Orange',
        unit: 'Doz',
        price: 15,
        image: '$imagePath/orange.png'),
    Item(name: 'Peach', unit: 'Pc', price: 8, image: '$imagePath/peach.png'),
    Item(
        name: 'Strawberry',
        unit: 'Box',
        price: 12,
        image: '$imagePath/strawberry.png'),
    Item(
        name: 'Fruit Basket',
        unit: 'Kg',
        price: 55,
        image: '$imagePath/fruitBasket.png'),
  ];


  //List<bool> clicked = List.generate(10, (index) => false, growable: true);
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    void saveData(int index) {
      dbHelper
          .insert(
        Cart(
          id: index,
          productId: index.toString(),
          productName: products[index].name,
          initialPrice: products[index].price,
          productPrice: products[index].price,
          quantity: ValueNotifier(1),
          unitTag: products[index].unit,
          image: products[index].image,
        ),
      )
          .then((value) {
        cart.addTotalPrice(products[index].price.toDouble());
        cart.addCounter();
       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Product Added to cart")));
           print('Product Added to cart');
      }).onError((error, stackTrace) {
        print(error.toString());
      });
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Product List'),
        actions: [
          badge_roq. Badge(
            badgeContent: Consumer<CartProvider>(
              builder: (context, value, child) {
                return Text(
                  value.getCounter().toString(),
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                );
              },
            ),
            position:  badge_roq.BadgePosition.topEnd(top: 2, end: 2), // badge_roq.BadgePosition(start: 30, bottom: 30),
            child: IconButton(
              onPressed: () {
                context.read<CartProvider>().getData();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));

                },
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          shrinkWrap: true,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.blueGrey.shade200,
              elevation: 10.0,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image(
                      height: 80,
                      width: 80,
                      image: AssetImage(products[index].image.toString()),
                    ),
                    SizedBox(
                      width: 130,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 5.0,
                          ),
                          RichText(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            text: TextSpan(
                                text: 'Name: ',
                                style: TextStyle(
                                    color: Colors.blueGrey.shade800,
                                    fontSize: 16.0),
                                children: [
                                  TextSpan(
                                      text:
                                          '${products[index].name.toString()}\n',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                          RichText(
                            maxLines: 1,
                            text: TextSpan(
                                text: 'Unit: ',
                                style: TextStyle(
                                    color: Colors.blueGrey.shade800,
                                    fontSize: 16.0),
                                children: [
                                  TextSpan(
                                      text:
                                          '${products[index].unit.toString()}\n',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                          RichText(
                            maxLines: 1,
                            text: TextSpan(
                                text: 'Price: ' r"$",
                                style: TextStyle(
                                    color: Colors.blueGrey.shade800,
                                    fontSize: 16.0),
                                children: [
                                  TextSpan(
                                      text:
                                          '${products[index].price.toString()}\n',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // backgroundColor: Colors.blueGrey.shade900,
                           // foregroundColor:Colors.white
                          ),

                        onPressed: () {
                          saveData(index);
                        },
                        child: const Text('Add to Cart')),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
