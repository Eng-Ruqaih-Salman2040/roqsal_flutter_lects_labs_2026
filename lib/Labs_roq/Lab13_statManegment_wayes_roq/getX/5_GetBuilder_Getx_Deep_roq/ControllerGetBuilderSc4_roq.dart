
import 'package:get/get.dart';

class ControllerGB_Sc4_Roq extends GetxController
{
  int counter1=0;
  int counter2=0;
  void IncrementC1_Funroq()
  {
    counter1++;
    update();
  }
  void DncrementC1_Funroq()
  {
    counter1--;
    update();
  }
  ////////////////// Counter 2
  void IncrementC2_Funroq()
  {
    counter2++;
    update();
  }
  void DncrementC2_Funroq()
  {
    counter2--;
    update();
  }
  int get sum=>counter1+counter2;
}