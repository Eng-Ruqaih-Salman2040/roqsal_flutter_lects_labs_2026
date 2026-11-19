
import 'package:get/get.dart';

class ControllerGetx_Sc3_Roq extends GetxController
{
  var counter1=0.obs;
  var counter2=0.obs;
  void IncrementC1_Funroq()
  {
    counter1++;

  }
  void DncrementC1_Funroq()
  {
    counter1--;

  }
  ////////////////// Counter 2
  void IncrementC2_Funroq()
  {
    counter2++;

  }
  void DncrementC2_Funroq()
  {
    counter2--;

  }
  int get sum=>counter1.value+counter2.value;
}