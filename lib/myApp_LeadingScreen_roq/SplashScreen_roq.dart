import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../myApp_Data_Settings_roq/constants.dart';
import '../myApp_Data_Settings_roq/my_app_settings.dart';

/// First visible screen: readable branding and a short, cancellable timer.
class SplashScreen_Roq extends StatefulWidget {
  const SplashScreen_Roq({super.key});
  @override
  State<SplashScreen_Roq> createState() => _SplashScreenRoqState();
}

class _SplashScreenRoqState extends State<SplashScreen_Roq> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(milliseconds: 2200), () {
      if (!mounted) return;
      final bool seen = context.read<MyAppSettings>().introCompleted;
      Navigator.of(context).pushReplacementNamed(
        seen ? flutterMain_rout_Roq : IntroScreen_rout_Roq,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 104,
                  width: 104,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: colors.primaryContainer,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Image.asset(
                    'assets_roq/assets_lect_roq/images_roq/logo_roq.png',
                    errorBuilder: (_, __, ___) =>
                        Icon(Icons.code_rounded, size: 58, color: colors.primary),
                  ),
                ),
                const SizedBox(height: 28),
                Text('Flutter Learning Hub',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                      color: colors.primary,
                    )),
                const SizedBox(height: 12),
                Text('Eng Ruqaih Salman',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                    )),
                const SizedBox(height: 10),
                Text('Lectures • Labs • Practice • Quizzes',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(height: 44),
                SizedBox(width: 120, child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(8),
                )),
                const SizedBox(height: 16),
                Text(APP_VERSION, style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
