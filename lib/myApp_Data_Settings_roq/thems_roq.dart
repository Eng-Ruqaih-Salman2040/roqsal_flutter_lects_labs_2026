import 'package:flutter/material.dart';

// Shared palette used by legacy lesson widgets and the refreshed Material 3 shell.
Color? pPrimaryColor = const Color(0xFF633B8F);
Color? pMedColor = const Color(0xFF8363AE);
Color? pSecondaryColor = const Color(0xFFBCA8DC);
Color pContentColorLightTheme = const Color(0xFF252135);
Color pContentColorDarkTheme = const Color(0xFFF6F2FA);
Color pWarninngColor = const Color(0xFFF3BB1C);
Color pErrorColor = const Color(0xFFF03738);

ThemeData lightThemeData(BuildContext context) => _buildTheme(Brightness.light);
ThemeData darkThemeData(BuildContext context) => _buildTheme(Brightness.dark);

ThemeData _buildTheme(Brightness brightness) {
  final ColorScheme colors = ColorScheme.fromSeed(
    seedColor: const Color(0xFF633B8F), brightness: brightness);
  return ThemeData(
    useMaterial3: true,
    colorScheme: colors,
    scaffoldBackgroundColor: colors.surface,
    primaryColor: colors.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: colors.surface,
      foregroundColor: colors.onSurface,
      centerTitle: false,
      elevation: 0,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: colors.surface,
      indicatorColor: colors.primaryContainer,
      labelTextStyle: WidgetStatePropertyAll<TextStyle>(
        TextStyle(fontSize: 11, color: colors.onSurface, fontWeight: FontWeight.w600)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    ),
    dividerTheme: DividerThemeData(color: colors.outlineVariant),
  );
}
