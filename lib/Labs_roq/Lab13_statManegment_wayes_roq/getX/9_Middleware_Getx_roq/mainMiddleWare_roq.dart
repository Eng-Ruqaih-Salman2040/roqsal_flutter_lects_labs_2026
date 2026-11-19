import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../10_GetxServices_GetView_roq/auth_service.dart';
import 'Home_Mw__roq.dart';
import 'auth_middleware.dart';
import 'login_middleWare_roq.dart';
// import 'middleware/auth_middleware.dart';
// import 'pages/home_page.dart';
// import 'pages/login_page.dart';
// import 'services/auth_service.dart';

void main() {
  // تهيئة الخدمات قبل تشغيل التطبيق
  initServices();
  runApp(MainMiddleWare_Roq());
}
// تهيئة خدمة المصادقة كـ GetxService
void initServices() {
  Get.put<AuthService>(AuthService());
}


class MainMiddleWare_Roq extends StatefulWidget {
  @override
  State<MainMiddleWare_Roq> createState() => _MainMiddleWare_RoqState();
}

class _MainMiddleWare_RoqState extends State<MainMiddleWare_Roq> {
  // تهيئة خدمة المصادقة كـ GetxService
  void initServices() {
    Get.put<AuthService>(AuthService());
  }
  @override
  void initState() {
    initServices();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Middleware Example',
      initialRoute: '/homeMiddelware', // محاولة الانتقال مباشرة إلى الصفحة الرئيسية
      getPages: [
        // المسار المحمي: الصفحة الرئيسية
        GetPage(
          name: '/homeMiddelware',
          page: () => HomePageMiddelware(),
          // تطبيق الـ Middleware هنا
          middlewares: [
            AuthMiddleware(),
          ],
        ),
        // مسار صفحة تسجيل الدخول
        GetPage(
          name: '/loginMiddelware',
          page: () => LoginPageMiddelware(),
          // يمكن تطبيق الـ Middleware هنا أيضًا لمنع المستخدم المسجل من الوصول إلى صفحة تسجيل الدخول
          middlewares: [
            AuthMiddleware(),
          ],
        ),
      ],
    );
  }
}