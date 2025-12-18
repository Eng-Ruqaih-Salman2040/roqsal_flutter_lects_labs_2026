import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class SampleProvider_Roq extends ChangeNotifier {
  String name = "empty";

  changText_Funroq() {
    name = "Ruqaih Salman";
    notifyListeners();
  }
}
