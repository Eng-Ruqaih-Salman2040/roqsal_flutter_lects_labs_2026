
import 'package:get/get.dart';
import 'package:flutter/material.dart';
class LocalController_Roq extends GetxController
{
  void ChangLang_roq(String CodeLang_roq)
  {
    Locale currelocal=Locale(CodeLang_roq);
    Get.updateLocale(currelocal);
  }
}