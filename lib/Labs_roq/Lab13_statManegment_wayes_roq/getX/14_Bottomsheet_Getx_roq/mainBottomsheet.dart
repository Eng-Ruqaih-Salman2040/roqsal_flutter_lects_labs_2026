import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_viewBottomsheet.dart';

void main() {
  runApp(const Getx_Bottomsheet());
}

class Getx_Bottomsheet extends StatelessWidget {
  const Getx_Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Advanced BottomSheet Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeViewBottomsheet(),
    );
  }
}
