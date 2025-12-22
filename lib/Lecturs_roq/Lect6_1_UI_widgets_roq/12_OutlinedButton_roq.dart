import 'package:flutter/material.dart';

void main() {
  runApp(const OutlinedButtonMain_Roq());
}

class OutlinedButtonMain_Roq extends StatelessWidget {
  const OutlinedButtonMain_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
        debugShowCheckedModeBanner: false,
        title: "OutlinedButton",
        theme: ThemeData(
          useMaterial3: true,
        primarySwatch: Colors.green,
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.deepPurple,
                backgroundColor: Colors.purple[100],
                padding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 30),
                textStyle: const TextStyle(
                    fontSize: 24, fontStyle: FontStyle.italic)))),home
    :
    const
    OutlinedButtonHomePage_Roq
    (
    )
    );
  }


}

class OutlinedButtonHomePage_Roq extends StatelessWidget {
  const OutlinedButtonHomePage_Roq({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Roq App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              OutlinedButton(onPressed: () {}, child: const Text('Button 1')),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.add_a_photo_outlined),
                  label: const Text('Button 2')),
              Text("----- Size (width ,hight) an OutlinedButton----"),
        //--------------------- Size (width ,hight)
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.deepPurple,
                    fixedSize: const Size(300, 80),
                    backgroundColor: Colors.amberAccent,
                    ),
                child: const Text('300 x 80'),
              ),
         Text("------ How to disable an OutlinedButton------"),
              OutlinedButton.icon(
                onPressed: null,
                icon: const Icon(Icons.shopping_cart),
                label: const Text('I am disabled'),
              ),
              Text("----- Coustome theme an OutlinedButton-----"),

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.amber,
                    padding: const EdgeInsets.all(25)),
                child: const Text('Outlined Button'),
              ),

            ],
          ),),
      ),);
  }
}
