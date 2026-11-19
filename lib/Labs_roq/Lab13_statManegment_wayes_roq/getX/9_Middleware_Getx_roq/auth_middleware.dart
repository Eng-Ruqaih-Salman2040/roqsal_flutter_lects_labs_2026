import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../10_GetxServices_GetView_roq/auth_service.dart';


class AuthMiddleware extends GetMiddleware {
  // تحديد الأولوية (الأقل هو الأعلى أولوية)
  @override
  int? get priority => 1;

  // الحصول على مثيل خدمة المصادقة
  final AuthService _authService = Get.find<AuthService>();

  // الدالة التي يتم استدعاؤها قبل إنشاء الصفحة
  // تستخدم لتحديد ما إذا كان يجب إعادة توجيه المستخدم
  @override
  RouteSettings? redirect(String? route) {
    // إذا لم يكن المستخدم مسجلاً للدخول ويحاول الوصول إلى '/home'
    if (!_authService.isLoggedIn.value && route == '/home') {
      // إعادة توجيه المستخدم إلى صفحة تسجيل الدخول
      return const RouteSettings(name: '/login');
    }

    // إذا كان المستخدم مسجلاً للدخول ويحاول الوصول إلى '/login'
    if (_authService.isLoggedIn.value && route == '/login') {
      // إعادة توجيه المستخدم إلى الصفحة الرئيسية
      return const RouteSettings(name: '/home');
    }

    // لا توجد إعادة توجيه، استمر في المسار المطلوب
    return null;
  }

// ملاحظة: هناك دوال أخرى يمكن استخدامها مثل:
// - onPageCalled: يتم استدعاؤها عند استدعاء المسار.
// - onPageBuildStart: يتم استدعاؤها قبل بناء الـ Widget.
// - onPageBuildEnd: يتم استدعاؤها بعد بناء الـ Widget.
}