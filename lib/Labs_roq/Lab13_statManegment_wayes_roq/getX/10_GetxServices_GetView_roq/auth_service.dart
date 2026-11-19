import 'package:get/get.dart';

class AuthService extends GetxService {
  // متغير لمراقبة حالة تسجيل الدخول
  final isLoggedIn = false.obs;

  // محاكاة عملية تسجيل الدخول
  void login() {
    isLoggedIn.value = true;
    Get.offAllNamed('/home'); // الانتقال إلى الصفحة الرئيسية بعد التسجيل
  }

  // محاكاة عملية تسجيل الخروج
  void logout() {
    isLoggedIn.value = false;
    Get.offAllNamed('/login'); // الانتقال إلى صفحة تسجيل الدخول
  }
}