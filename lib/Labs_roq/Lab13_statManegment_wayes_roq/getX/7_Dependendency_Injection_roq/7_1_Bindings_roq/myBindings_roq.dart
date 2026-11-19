import 'package:get/get.dart';

import 'ControllerGB_Binding_roq.dart';
class MyBindings_Roq implements Bindings
{
  @override
  void dependencies() {
   Get.put(Co_GB_Binding_Roq());
    //Get.put(Co_GB_Binding_Roq(),permanent: true);
   // Get.lazyPut(() => Co_GB_Binding_Roq(),fenix: true);
  }

}