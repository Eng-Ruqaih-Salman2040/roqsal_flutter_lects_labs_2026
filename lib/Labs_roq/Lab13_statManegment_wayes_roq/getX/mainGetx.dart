/*
import 'package:flutter/material.dart';
import 'package:roqsal_getx_completly_2026/8_Controller\'s_lifecycle_roq/mainLifcycle_roq.dart';

import '11_Localization_Getx_roq/1_baiscOverView_roq/1_device_language_roq.dart';
import '11_Localization_Getx_roq/2_LocalTranslation_roq/mainLoca_roq.dart';
import '11_Localization_Getx_roq/3_LocalTranslation_roq/mainLocaController_roq.dart';
import '12_Dialog_Getx_roq/homeDialog_roq.dart';
import '13_Snackbar_Getx_roq/homeSnackbar_ex1_roq.dart';
import '13_Snackbar_Getx_roq/homeSnackbar_ex2_roq.dart';
import '14_Bottomsheet_Getx_roq/homeBottomsheet_ex1_roq.dart';
import '14_Bottomsheet_Getx_roq/mainBottomsheet.dart';
import '15_Getx_Features_roq/navigation_arguments_roq/mainNav_argumentes_roq.dart';
import '16_Getx_Theme_roq/1_baiscTheme_roq.dart';
import '16_Getx_Theme_roq/2_customTheme_roq.dart';
import '2_Rout_management_roq/RM_Example1_roq/1_main_navi_roq.dart';
import '2_Rout_management_roq/RM_Example2_roq/2_main_navi_roq.dart';
import '4_State_management_roq/4_0_setState_roq/setState_main_roq.dart';
import '4_State_management_roq/4_1_Getx_roq/HomeGetx_roq.dart';
import '4_State_management_roq/4_2_GetBuilder_roq/HomeGetBuilder_roq.dart';
import '4_State_management_roq/4_3_Obx_roq/HomeObx_roq.dart';
import '5_GetBuilder_Getx_Deep_roq/Home_GetX_Bu_roq.dart';
import '6_Dependendency_Injection_roq/6_1_GetPut_roq/Home_GetPut_roq.dart';
import '6_Dependendency_Injection_roq/6_3_GetLazyPut_find_roq/Home_GetLazyPut_roq.dart';
import '7_Dependendency_Injection_roq/7_1_Bindings_roq/mainBinding_roq.dart';
import '8_Controller\'s_lifecycle_roq/mainLifcycle_roq.dart';
import '9_Middleware_Getx_roq/mainMiddleWare_roq.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX Examples',
      theme: _buildTheme(),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/2_Rout_management_roq_example1': (context) => const NavigationEx1_Getx_Roq(),
        '/2_Rout_management_roq_example2': (context) => const NavigationEx2_Getx_Roq(),
        '/3_MVC_Design_Pattern_roq_setState': (context) => const Home_Setstate_Roq(),
        '/3_MVC_Design_Pattern_roq_getBuilder': (context) => const Home_GetBuilder_Roq(),
        '/3_MVC_Design_Pattern_roq_Getx': (context) => const Home_Getx_Roq(),
        '/3_MVC_Design_Pattern_roq_obx': (context) => Home_Obx_Roq(),
        '/5_GetBuilder_Getx_in Deep_roq': (context) => Home_Get_X_Builder_Roq(),
        '/6_Dependendency_Injection_roq_getput': (context) => Home_GetPut_Roq(),
        '/6_Dependendency_Injection_roq_GetLazeyPut': (context) => Home_GetLazeyPut_Roq(),
        '/6_Dependendency_Injection_roq_MainBinding': (context) => MainBinding_Roq(),
        '/7_Controlls_Lifecycle_roq_binding': (context) => MainBinding_Roq(),
        '/8_Controlls_Lifecycle_roq_Lifecycle': (context) => const MainLifecycle_Roq(),
        '/9_MiddleWare_roq_Middleware': (context) => MainMiddleWare_Roq(),
        '/11_Localization_Getx_roq_deviceLanguage': (context) => Loc_DeviceLoang_Roq(),
        '/11_Localization_Getx_roq_mainLocalization': (context) => MainLocalizatio_Roq(),
        '/11_Localization_Getx_roq_mainLocalizationController': (context) => MainLocalController_Roq(),
        '/12_Dialog_Getx_roq_dialog': (context) => DialogGetx_Roq(),
        '/13_Snackbar_Getx_roq_ex1': (context) => SnackbarGetx_Ex1_Roq(),
        '/13_Snackbar_Getx_roq_ex2': (context) => SnackbarGetx_Ex2_Roq(),
        '/14_Bottomsheet_Getx_roq_ex1': (context) => Getx_Bottomsheet(),
        '/14_Bottomsheet_Getx_roq_ex2': (context) => MainBottomsheetGetx_Roq(),
        '/15_Getx_Features_roq_navigationArguments': (context) => MainNav_Argum_Roq(),
        '/16_Getx_Theme_roq_basicTheme': (context) => BaiscMainTheme_Roq(),
        '/16_Getx_Theme_roq_customTheme': (context) => CustomMainTheme_Roq()
      },
    );
  }

  ThemeData _buildTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      primaryColor: Colors.blue[800],
      primaryColorDark: Colors.blue[900],
      fontFamily: 'Tajawal',
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 4,
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(16),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          elevation: 3,
        ),
      ),
      cardTheme: CardThemeData(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        margin: const EdgeInsets.all(8),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE3F2FD),
              Color(0xFFF3E5F5),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              _buildAppBar(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildHeader(),
                      const SizedBox(height: 16),
                      Expanded(
                        child: _buildExampleGrid(),
                      ),
                    ],
                  ),
                ),
              ),
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[800]!, Colors.blue[600]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: [
            const Icon(
              Icons.flash_on,
              color: Colors.white,
              size: 28,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'GetX Examples',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                ),
                Text(
                  'Complete GetX Implementation Guide',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'GetX Examples Gallery',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2C3E50),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Explore various GetX features and implementations. Tap any card to see the example in action.',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
            height: 1.4,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey[200]!,
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                color: Colors.blue[600],
                size: 20,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '${_examples.length} examples available',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildExampleGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.85,
      ),
      itemCount: _examples.length,
      itemBuilder: (context, index) {
        final example = _examples[index];
        return _buildExampleCard(
          title: example['title'] as String,
          subtitle: example['subtitle'] as String,
          route: example['route'] as String,
          icon: example['icon'] as IconData,
          color: example['color'] as Color,
          context: context,
          index: index,
        );
      },
    );
  }

  Widget _buildExampleCard({
    required String title,
    required String subtitle,
    required String route,
    required IconData icon,
    required Color color,
    required BuildContext context,
    required int index,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        borderRadius: BorderRadius.circular(16),
        splashColor: color.withOpacity(0.1),
        highlightColor: color.withOpacity(0.05),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                color.withOpacity(0.03),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            color,
                            color.withOpacity(0.7),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: color.withOpacity(0.3),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Icon(
                        icon,
                        size: 24,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2C3E50),
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600],
                      height: 1.4,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: color.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'View Example',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: color,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        size: 14,
                        color: color,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Color(0xFF2C3E50),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.code,
                color: Colors.white.withOpacity(0.8),
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'GetX Flutter Package',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.9),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'By Eng: Ruqaih Hussein Salman',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '© 2024 GetX Examples',
            style: TextStyle(
              fontSize: 11,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ],
      ),
    );
  }

  final List<Map<String, dynamic>> _examples = [
    {
      'title': 'Route Management Example 1',
      'subtitle': 'Introduction to Route management of Pages',
      'route': '/2_Rout_management_roq_example1',
      'icon': Icons.route,
      'color': Colors.blue,
    },
    {
      'title': 'Route Management Example 2',
      'subtitle': 'Advanced Route management techniques',
      'route': '/2_Rout_management_roq_example2',
      'icon': Icons.navigation,
      'color': Colors.blueAccent,
    },
    {
      'title': 'MVC Pattern - setState',
      'subtitle': 'Traditional state management using setState',
      'route': '/3_MVC_Design_Pattern_roq_setState',
      'icon': Icons.refresh,
      'color': Colors.green,
    },
    {
      'title': 'MVC Pattern - GetBuilder',
      'subtitle': 'State management with GetBuilder',
      'route': '/3_MVC_Design_Pattern_roq_getBuilder',
      'icon': Icons.build,
      'color': Colors.orange,
    },
    {
      'title': 'MVC Pattern - GetX',
      'subtitle': 'Reactive state management with GetX',
      'route': '/3_MVC_Design_Pattern_roq_Getx',
      'icon': Icons.bolt,
      'color': Colors.purple,
    },
    {
      'title': 'MVC Pattern - Obx',
      'subtitle': 'Observable-based state management',
      'route': '/3_MVC_Design_Pattern_roq_obx',
      'icon': Icons.remove_red_eye,
      'color': Colors.red,
    },
    {
      'title': 'GetBuilder Deep Dive',
      'subtitle': 'Advanced GetBuilder implementation',
      'route': '/5_GetBuilder_Getx_in Deep_roq',
      'icon': Icons.layers,
      'color': Colors.teal,
    },
    {
      'title': 'Dependency Injection - GetPut',
      'subtitle': 'Simple dependency injection with GetPut',
      'route': '/6_Dependendency_Injection_roq_getput',
      'icon': Icons.input,
      'color': Colors.indigo,
    },
    {
      'title': 'Dependency Injection - GetLazyPut',
      'subtitle': 'Lazy dependency injection',
      'route': '/6_Dependendency_Injection_roq_GetLazeyPut',
      'icon': Icons.timer,
      'color': Colors.brown,
    },
    {
      'title': 'Dependency Injection - Binding',
      'subtitle': 'Using Bindings for dependency management',
      'route': '/6_Dependendency_Injection_roq_MainBinding',
      'icon': Icons.link,
      'color': Colors.cyan,
    },
    {
      'title': "Controller Lifecycle - Binding",
      'subtitle': 'Controller lifecycle with bindings',
      'route': '/7_Controlls_Lifecycle_roq_binding',
      'icon': Icons.timeline,
      'color': Colors.amber,
    },
    {
      'title': "Controller Lifecycle",
      'subtitle': 'Complete controller lifecycle management',
      'route': '/8_Controlls_Lifecycle_roq_Lifecycle',
      'icon': Icons.cyclone_sharp,
      'color': Colors.deepOrange,
    },
    {
      'title': 'Middleware',
      'subtitle': 'Route middleware implementation',
      'route': '/9_MiddleWare_roq_Middleware',
      'icon': Icons.security,
      'color': Colors.green,
    },
    {
      'title': 'Localization - Device',
      'subtitle': 'Detect and use device language',
      'route': '/11_Localization_Getx_roq_deviceLanguage',
      'icon': Icons.language,
      'color': Colors.lightGreen,
    },
    {
      'title': 'Localization - Translation',
      'subtitle': 'Multi-language support implementation',
      'route': '/11_Localization_Getx_roq_mainLocalization',
      'icon': Icons.translate,
      'color': Colors.pink,
    },
    {
      'title': 'Localization - Controller',
      'subtitle': 'Localization with controller',
      'route': '/11_Localization_Getx_roq_mainLocalizationController',
      'icon': Icons.settings,
      'color': Colors.lime,
    },
    {
      'title': 'Dialog',
      'subtitle': 'GetX dialog implementation',
      'route': '/12_Dialog_Getx_roq_dialog',
      'icon': Icons.message,
      'color': Colors.deepPurple,
    },
    {
      'title': 'Snackbar - Example 1',
      'subtitle': 'Basic snackbar implementation',
      'route': '/13_Snackbar_Getx_roq_ex1',
      'icon': Icons.notifications,
      'color': Colors.grey,
    },
    {
      'title': 'Snackbar - Example 2',
      'subtitle': 'Advanced snackbar features',
      'route': '/13_Snackbar_Getx_roq_ex2',
      'icon': Icons.notification_important,
      'color': Colors.grey,
    },
    {
      'title': 'BottomSheet - Example 1',
      'subtitle': 'Basic bottom sheet implementation',
      'route': '/14_Bottomsheet_Getx_roq_ex1',
      'icon': Icons.call_to_action,
      'color': Colors.blueGrey,
    },
    {
      'title': 'BottomSheet - Example 2',
      'subtitle': 'Advanced bottom sheet features',
      'route': '/14_Bottomsheet_Getx_roq_ex2',
      'icon': Icons.view_stream,
      'color': Colors.blueGrey,
    },
    {
      'title': 'Navigation Arguments',
      'subtitle': 'Passing arguments between routes',
      'route': '/15_Getx_Features_roq_navigationArguments',
      'icon': Icons.arrow_forward,
      'color': Colors.teal,
    },
    {
      'title': 'Theme - Basic',
      'subtitle': 'Basic theme management',
      'route': '/16_Getx_Theme_roq_basicTheme',
      'icon': Icons.palette,
      'color': Colors.blueGrey,
    },
    {
      'title': 'Theme - Custom',
      'subtitle': 'Custom theme implementation',
      'route': '/16_Getx_Theme_roq_customTheme',
      'icon': Icons.color_lens,
      'color': Colors.deepPurpleAccent,
    },
  ];
}*/

import 'package:flutter/material.dart';
//import 'package:roqsal_getx_completly_2026/8_Controller\'s_lifecycle_roq/mainLifcycle_roq.dart';

import '11_Localization_Getx_roq/1_baiscOverView_roq/1_device_language_roq.dart';
import '11_Localization_Getx_roq/2_LocalTranslation_roq/mainLoca_roq.dart';
import '11_Localization_Getx_roq/3_LocalTranslation_roq/mainLocaController_roq.dart';
import '12_Dialog_Getx_roq/homeDialog_roq.dart';
import '13_Snackbar_Getx_roq/homeSnackbar_ex1_roq.dart';
import '13_Snackbar_Getx_roq/homeSnackbar_ex2_roq.dart';
import '14_Bottomsheet_Getx_roq/homeBottomsheet_ex1_roq.dart';
import '14_Bottomsheet_Getx_roq/mainBottomsheet.dart';
import '15_Getx_Features_roq/navigation_arguments_roq/mainNav_argumentes_roq.dart';
import '16_Getx_Theme_roq/1_baiscTheme_roq.dart';
import '16_Getx_Theme_roq/2_customTheme_roq.dart';
import '2_Rout_management_roq/RM_Example1_roq/1_main_navi_roq.dart';
import '2_Rout_management_roq/RM_Example2_roq/2_main_navi_roq.dart';
import '4_State_management_roq/4_0_setState_roq/setState_main_roq.dart';
import '4_State_management_roq/4_1_Getx_roq/HomeGetx_roq.dart';
import '4_State_management_roq/4_2_GetBuilder_roq/HomeGetBuilder_roq.dart';
import '4_State_management_roq/4_3_Obx_roq/HomeObx_roq.dart';
import '5_GetBuilder_Getx_Deep_roq/Home_GetX_Bu_roq.dart';
import '6_Dependendency_Injection_roq/6_1_GetPut_roq/Home_GetPut_roq.dart';
import '6_Dependendency_Injection_roq/6_3_GetLazyPut_find_roq/Home_GetLazyPut_roq.dart';
import '7_Dependendency_Injection_roq/7_1_Bindings_roq/mainBinding_roq.dart';
import '8_Controller\'s_lifecycle_roq/mainLifcycle_roq.dart';
import '9_Middleware_Getx_roq/mainMiddleWare_roq.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GetX Examples',
      theme: _buildTheme(),
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
      routes: {
        '/2_Rout_management_roq_example1': (context) => const NavigationEx1_Getx_Roq(),
        '/2_Rout_management_roq_example2': (context) => const NavigationEx2_Getx_Roq(),
        '/3_MVC_Design_Pattern_roq_setState': (context) => const Home_Setstate_Roq(),
        '/3_MVC_Design_Pattern_roq_getBuilder': (context) => const Home_GetBuilder_Roq(),
        '/3_MVC_Design_Pattern_roq_Getx': (context) => const Home_Getx_Roq(),
        '/3_MVC_Design_Pattern_roq_obx': (context) => Home_Obx_Roq(),
        '/5_GetBuilder_Getx_in Deep_roq': (context) => Home_Get_X_Builder_Roq(),
        '/6_Dependendency_Injection_roq_getput': (context) => Home_GetPut_Roq(),
        '/6_Dependendency_Injection_roq_GetLazeyPut': (context) => Home_GetLazeyPut_Roq(),
        '/6_Dependendency_Injection_roq_MainBinding': (context) => MainBinding_Roq(),
        '/7_Controlls_Lifecycle_roq_binding': (context) => MainBinding_Roq(),
        '/8_Controlls_Lifecycle_roq_Lifecycle': (context) => const MainLifecycle_Roq(),
        '/9_MiddleWare_roq_Middleware': (context) => MainMiddleWare_Roq(),
        '/11_Localization_Getx_roq_deviceLanguage': (context) => Loc_DeviceLoang_Roq(),
        '/11_Localization_Getx_roq_mainLocalization': (context) => MainLocalizatio_Roq(),
        '/11_Localization_Getx_roq_mainLocalizationController': (context) => MainLocalController_Roq(),
        '/12_Dialog_Getx_roq_dialog': (context) => DialogGetx_Roq(),
        '/13_Snackbar_Getx_roq_ex1': (context) => SnackbarGetx_Ex1_Roq(),
        '/13_Snackbar_Getx_roq_ex2': (context) => SnackbarGetx_Ex2_Roq(),
        '/14_Bottomsheet_Getx_roq_ex1': (context) => Getx_Bottomsheet(),
        '/14_Bottomsheet_Getx_roq_ex2': (context) => MainBottomsheetGetx_Roq(),
        '/15_Getx_Features_roq_navigationArguments': (context) => MainNav_Argum_Roq(),
        '/16_Getx_Theme_roq_basicTheme': (context) => BaiscMainTheme_Roq(),
        '/16_Getx_Theme_roq_customTheme': (context) => CustomMainTheme_Roq()
      },
    );
  }

  ThemeData _buildTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: 'Tajawal',
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GetX Examples',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[50],
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: _buildExampleList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'GetX Features Gallery',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.grey[900],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Explore GetX capabilities through practical examples',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExampleList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _examples.length,
      itemBuilder: (context, index) {
        final example = _examples[index];
        return _buildExampleItem(
          title: example['title'] as String,
          subtitle: example['subtitle'] as String,
          route: example['route'] as String,
          icon: example['icon'] as IconData,
          color: example['color'] as Color,
          index: index,
          context: context,
        );
      },
    );
  }

  Widget _buildExampleItem({
    required String title,
    required String subtitle,
    required String route,
    required IconData icon,
    required Color color,
    required int index,
    required BuildContext context,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        elevation: 1,
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, route),
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    icon,
                    size: 20,
                    color: color,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue[700],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'GetX Package Examples',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
          Text(
            'Eng: Ruqaih Hussein Salman',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  final List<Map<String, dynamic>> _examples = [
    {
      'title': 'Route Management - Example 1',
      'subtitle': 'Basic navigation with GetX',
      'route': '/2_Rout_management_roq_example1',
      'icon': Icons.navigation,
      'color': Colors.blue,
    },
    {
      'title': 'Route Management - Example 2',
      'subtitle': 'Advanced navigation techniques',
      'route': '/2_Rout_management_roq_example2',
      'icon': Icons.route,
      'color': Colors.blue,
    },
    {
      'title': 'MVC Pattern - setState',
      'subtitle': 'Traditional Flutter state management',
      'route': '/3_MVC_Design_Pattern_roq_setState',
      'icon': Icons.refresh,
      'color': Colors.green,
    },
    {
      'title': 'MVC Pattern - GetBuilder',
      'subtitle': 'GetX reactive state management',
      'route': '/3_MVC_Design_Pattern_roq_getBuilder',
      'icon': Icons.build,
      'color': Colors.orange,
    },
    {
      'title': 'MVC Pattern - GetX',
      'subtitle': 'Simple reactive programming',
      'route': '/3_MVC_Design_Pattern_roq_Getx',
      'icon': Icons.flash_on,
      'color': Colors.purple,
    },
    {
      'title': 'MVC Pattern - Obx',
      'subtitle': 'Observable-based reactivity',
      'route': '/3_MVC_Design_Pattern_roq_obx',
      'icon': Icons.remove_red_eye,
      'color': Colors.red,
    },
    {
      'title': 'GetBuilder Deep Dive',
      'subtitle': 'Advanced GetBuilder usage',
      'route': '/5_GetBuilder_Getx_in Deep_roq',
      'icon': Icons.layers,
      'color': Colors.teal,
    },
    {
      'title': 'Dependency Injection - GetPut',
      'subtitle': 'Simple dependency injection',
      'route': '/6_Dependendency_Injection_roq_getput',
      'icon': Icons.input,
      'color': Colors.indigo,
    },
    {
      'title': 'Dependency Injection - GetLazyPut',
      'subtitle': 'Lazy loading dependencies',
      'route': '/6_Dependendency_Injection_roq_GetLazeyPut',
      'icon': Icons.timer,
      'color': Colors.brown,
    },
    {
      'title': 'Dependency Injection - Bindings',
      'subtitle': 'Advanced binding system',
      'route': '/6_Dependendency_Injection_roq_MainBinding',
      'icon': Icons.link,
      'color': Colors.cyan,
    },
    {
      'title': "Controller Lifecycle - Bindings",
      'subtitle': 'Lifecycle with bindings',
      'route': '/7_Controlls_Lifecycle_roq_binding',
      'icon': Icons.timeline,
      'color': Colors.amber,
    },
    {
      'title': "Controller Lifecycle",
      'subtitle': 'Complete lifecycle management',
      'route': '/8_Controlls_Lifecycle_roq_Lifecycle',
      'icon': Icons.cyclone_sharp,
      'color': Colors.deepOrange,
    },
    {
      'title': 'Middleware',
      'subtitle': 'Route interception & guards',
      'route': '/9_MiddleWare_roq_Middleware',
      'icon': Icons.security,
      'color': Colors.green,
    },
    {
      'title': 'Localization - Device Language',
      'subtitle': 'Detect system language',
      'route': '/11_Localization_Getx_roq_deviceLanguage',
      'icon': Icons.language,
      'color': Colors.lightGreen,
    },
    {
      'title': 'Localization - Translations',
      'subtitle': 'Multi-language support',
      'route': '/11_Localization_Getx_roq_mainLocalization',
      'icon': Icons.translate,
      'color': Colors.pink,
    },
    {
      'title': 'Localization - Controller',
      'subtitle': 'Dynamic language switching',
      'route': '/11_Localization_Getx_roq_mainLocalizationController',
      'icon': Icons.settings,
      'color': Colors.lime,
    },
    {
      'title': 'Dialog System',
      'subtitle': 'Custom dialogs & alerts',
      'route': '/12_Dialog_Getx_roq_dialog',
      'icon': Icons.message,
      'color': Colors.deepPurple,
    },
    {
      'title': 'Snackbar - Example 1',
      'subtitle': 'Basic notifications',
      'route': '/13_Snackbar_Getx_roq_ex1',
      'icon': Icons.notifications,
      'color': Colors.grey,
    },
    {
      'title': 'Snackbar - Example 2',
      'subtitle': 'Advanced snackbar features',
      'route': '/13_Snackbar_Getx_roq_ex2',
      'icon': Icons.notification_important,
      'color': Colors.grey,
    },
    {
      'title': 'BottomSheet - Example 1',
      'subtitle': 'Modal bottom sheets',
      'route': '/14_Bottomsheet_Getx_roq_ex1',
      'icon': Icons.call_to_action,
      'color': Colors.blueGrey,
    },
    {
      'title': 'BottomSheet - Example 2',
      'subtitle': 'Custom bottom sheets',
      'route': '/14_Bottomsheet_Getx_roq_ex2',
      'icon': Icons.view_stream,
      'color': Colors.blueGrey,
    },
    {
      'title': 'Navigation Arguments',
      'subtitle': 'Pass data between screens',
      'route': '/15_Getx_Features_roq_navigationArguments',
      'icon': Icons.arrow_forward,
      'color': Colors.teal,
    },
    {
      'title': 'Theme - Basic',
      'subtitle': 'Light & dark themes',
      'route': '/16_Getx_Theme_roq_basicTheme',
      'icon': Icons.palette,
      'color': Colors.blueGrey,
    },
    {
      'title': 'Theme - Custom',
      'subtitle': 'Custom theme system',
      'route': '/16_Getx_Theme_roq_customTheme',
      'icon': Icons.color_lens,
      'color': Colors.deepPurpleAccent,
    },
  ];
}