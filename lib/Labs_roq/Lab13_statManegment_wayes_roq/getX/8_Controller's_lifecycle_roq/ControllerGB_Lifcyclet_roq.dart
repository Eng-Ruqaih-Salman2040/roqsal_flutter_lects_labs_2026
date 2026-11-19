
import 'package:get/get.dart';

class Co_GB_Lifcyclet_Roq extends GetxController
{
  int counter_roq=0;
  void Increment_Funroq()
  {
    counter_roq++;
    update();
  }
  void Dncrement_Funroq()
  {
    counter_roq--;
    update();
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("onInit State");
  }
  @override
  void onClose() {
    // TODO: implement onClose
    print("onClose State");
    super.onClose();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    print("onReady State");
    super.onReady();
  }
  @override
  // TODO: implement onStart
  InternalFinalCallback<void> get onStart => super.onStart;
  @override
  // TODO: implement onDelete
  InternalFinalCallback<void> get onDelete => super.onDelete;
}
