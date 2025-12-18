import 'package:flutter/material.dart';

class My_Provide_Roq_model_ex with ChangeNotifier
{
  int counter_roq=0;
  void increment_Fun_roq()
  {
    counter_roq++;
    notifyListeners();
  }
}