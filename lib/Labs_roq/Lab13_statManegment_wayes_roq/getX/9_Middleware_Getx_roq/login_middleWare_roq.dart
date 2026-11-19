import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../10_GetxServices_GetView_roq/auth_service.dart';


class LoginPageMiddelware extends StatelessWidget {
  final AuthService authService = Get.find<AuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('صفحة تسجيل الدخول')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'أنت غير مسجل للدخول.',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                authService.login(); // محاكاة تسجيل الدخول
              },
              child: const Text('تسجيل الدخول'),
            ),
          ],
        ),
      ),
    );
  }
}