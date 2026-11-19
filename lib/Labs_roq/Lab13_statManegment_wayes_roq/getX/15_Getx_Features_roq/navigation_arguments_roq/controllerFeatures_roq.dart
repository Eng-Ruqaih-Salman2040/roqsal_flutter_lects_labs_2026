
import 'package:get/get.dart';

class ControllerFeatures_Roq extends  GetxController
{
  //------------------- 1.Navigation var between pages --------------
  String? name_roq;
  int?no_roq;
  //-------------------- 2.Show a previouse page name ----------------
  String? preRout_roq;
  String? routCurrent_roq;
  @override
  void onInit() {
    //------------------- 1.Navigation var between pages --------------

    name_roq=Get.arguments['name'];
    no_roq=Get.arguments['no'];

    //-------------------- 2.Show a previouse page name ----------------
    preRout_roq=Get.previousRoute;
    //-------------------- 3.Get All Route Information ----------------
    routCurrent_roq=Get.routing.current;
    super.onInit();
  }
  //--------------------Check if the button Clicked ----------------------
  bool butClicked_roq=false;
  void butClicked_Funroq()
  {
    butClicked_roq=true;;
    update();
  }
}