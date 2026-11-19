import 'package:get/get.dart';


import 'ControllerGB_Lifcyclet_roq.dart';
class MyBindings_Lifecycle_Roq implements Bindings
{
  @override
  void dependencies() {
   Get.put(Co_GB_Lifcyclet_Roq());
    //Get.put(Co_GB_Binding_Roq(),permanent: true);
   // Get.lazyPut(() => Co_GB_Binding_Roq(),fenix: true);
  }

}