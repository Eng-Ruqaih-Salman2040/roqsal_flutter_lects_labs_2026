/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Import all necessary screens for the routes
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
import '9_Middleware_Getx_roq/mainMiddleWare_roq.dart';

// 1. Create a dedicated data model for better code structure
class ExampleItem {
  final String title;
  final String subtitle;
  final String route;
  final IconData icon;
  final Color color;

  const ExampleItem({
    required this.title,
    required this.subtitle,
    required this.route,
    required this.icon,
    required this.color,
  });
}

// 2. Refactor the hardcoded list into a list of ExampleItem objects
// FIX: Changed 'const' to 'final' to allow non-constant color expressions like Colors.blueGrey.shade700
final List<ExampleItem> _examples = [
  // Route Management
  ExampleItem(
    title: 'Route Management 1',
    subtitle: 'Simple navigation example',
    route: '/route_management_ex1',
    icon: Icons.navigation,
    color: Colors.blue,
  ),
  ExampleItem(
    title: 'Route Management 2',
    subtitle: 'Advanced navigation example',
    route: '/route_management_ex2',
    icon: Icons.alt_route,
    color: Colors.blueAccent,
  ),

  // State Management (MVC)
  ExampleItem(
    title: 'State Management - setState',
    subtitle: 'Traditional Flutter state',
    route: '/state_management_setstate',
    icon: Icons.refresh,
    color: Colors.green,
  ),
  ExampleItem(
    title: 'State Management - GetBuilder',
    subtitle: 'Lightweight state management',
    route: '/state_management_getbuilder',
    icon: Icons.build_circle,
    color: Colors.orange,
  ),
  ExampleItem(
    title: 'State Management - GetX',
    subtitle: 'Reactive state management',
    route: '/state_management_getx',
    icon: Icons.star,
    color: Colors.purple,
  ),
  ExampleItem(
    title: 'State Management - Obx',
    subtitle: 'Reactive widget observer',
    route: '/state_management_obx',
    icon: Icons.visibility,
    color: Colors.red,
  ),
  ExampleItem(
    title: 'GetBuilder/GetX in Depth',
    subtitle: 'Deep dive into state builders',
    route: '/getx_in_depth',
    icon: Icons.layers,
    color: Colors.teal,
  ),

  // Dependency Injection
  ExampleItem(
    title: 'DI - Get.put()',
    subtitle: 'Instance creation and injection',
    route: '/di_getput',
    icon: Icons.input,
    color: Colors.indigo,
  ),
  ExampleItem(
    title: 'DI - Get.lazyPut()',
    subtitle: 'Lazy instance creation',
    route: '/di_getlazyput',
    icon: Icons.hourglass_empty,
    color: Colors.brown,
  ),
  ExampleItem(
    title: 'DI - Bindings',
    subtitle: 'Managing dependencies with Bindings',
    route: '/di_bindings',
    icon: Icons.link,
    color: Colors.cyan,
  ),

  // Controller Lifecycle
  ExampleItem(
    title: 'Lifecycle - Binding',
    subtitle: 'Controller lifecycle with Bindings',
    route: '/lifecycle_binding',
    icon: Icons.timeline,
    color: Colors.amber,
  ),
  ExampleItem(
    title: 'Lifecycle - Controller',
    subtitle: 'Controller lifecycle methods',
    route: '/lifecycle_controller',
    icon: Icons.refresh_sharp,
    color: Colors.deepOrange,
  ),

  // Middleware
  ExampleItem(
    title: 'Middleware',
    subtitle: 'Route protection and redirection',
    route: '/middleware',
    icon: Icons.security,
    color: Colors.pink,
  ),

  // Localization
  ExampleItem(
    title: 'Localization - Device',
    subtitle: 'Using device language settings',
    route: '/localization_device',
    icon: Icons.language,
    color: Colors.lightGreen,
  ),
  ExampleItem(
    title: 'Localization - Translation',
    subtitle: 'Basic translation implementation',
    route: '/localization_main',
    icon: Icons.translate,
    color: Colors.pinkAccent,
  ),
  ExampleItem(
    title: 'Localization - Controller',
    subtitle: 'Managing locale with a Controller',
    route: '/localization_controller',
    icon: Icons.record_voice_over,
    color: Colors.lime,
  ),

  // UI Features
  ExampleItem(
    title: 'Dialog',
    subtitle: 'Showing dialogs with GetX',
    route: '/ui_dialog',
    icon: Icons.message,
    color: Colors.deepPurple,
  ),
  ExampleItem(
    title: 'Snackbar Example 1',
    subtitle: 'Basic snackbar notification',
    route: '/ui_snackbar_ex1',
    icon: Icons.notifications_active,
    color: Colors.indigoAccent,
  ),
  ExampleItem(
    title: 'Snackbar Example 2',
    subtitle: 'Customized snackbar notification',
    route: '/ui_snackbar_ex2',
    icon: Icons.notification_important,
    color: Colors.redAccent,
  ),
  ExampleItem(
    title: 'Bottomsheet Example 1',
    subtitle: 'Showing a simple bottomsheet',
    route: '/ui_bottomsheet_ex1',
    icon: Icons.view_stream,
    color: Colors.blueGrey,
  ),
  ExampleItem(
    title: 'Bottomsheet Example 2',
    subtitle: 'Showing a custom bottomsheet',
    route: '/ui_bottomsheet_ex2',
    icon: Icons.view_day,
    color: Colors.blueGrey.shade700, // This is now allowed
  ),

  // GetX Features
  ExampleItem(
    title: 'Navigation Arguments',
    subtitle: 'Passing data between screens',
    route: '/features_nav_args',
    icon: Icons.data_usage,
    color: Colors.tealAccent,
  ),

  // Theme Management
  ExampleItem(
    title: 'Theme - Basic',
    subtitle: 'Switching between light/dark themes',
    route: '/theme_basic',
    icon: Icons.brightness_6,
    color: Colors.grey,
  ),
  ExampleItem(
    title: 'Theme - Custom',
    subtitle: 'Applying a custom theme',
    route: '/theme_custom',
    icon: Icons.color_lens,
    color: Colors.cyanAccent,
  ),
];

// 3. Switch to GetMaterialApp and use Get.toNamed
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Define GetPage list for better route management
  List<GetPage> get _getPages => [
        GetPage(name: '/', page: () => const HomeScreen()),
        // Route Management
        GetPage(name: '/route_management_ex1', page: () => const NavigationEx1_Getx_Roq()),
        GetPage(name: '/route_management_ex2', page: () => const NavigationEx2_Getx_Roq()),
        // State Management
        GetPage(name: '/state_management_setstate', page: () => const Home_Setstate_Roq()),
        GetPage(name: '/state_management_getbuilder', page: () => const Home_GetBuilder_Roq()),
        GetPage(name: '/state_management_getx', page: () => const Home_Getx_Roq()),
        GetPage(name: '/state_management_obx', page: () => Home_Obx_Roq()),
        GetPage(name: '/getx_in_depth', page: () => Home_Get_X_Builder_Roq()),
        // Dependency Injection
        GetPage(name: '/di_getput', page: () => Home_GetPut_Roq()),
        GetPage(name: '/di_getlazyput', page: () => Home_GetLazeyPut_Roq()),
        GetPage(name: '/di_bindings', page: () => MainBinding_Roq()),
        // Controller Lifecycle
        GetPage(name: '/lifecycle_binding', page: () => MainBinding_Roq()), // Assuming this is the correct screen
        GetPage(name: '/lifecycle_controller', page: () => const MainLifecycle_Roq()),
        // Middleware
        GetPage(name: '/middleware', page: () => MainMiddleWare_Roq()),
        // Localization
        GetPage(name: '/localization_device', page: () => Loc_DeviceLoang_Roq()),
        GetPage(name: '/localization_main', page: () => MainLocalizatio_Roq()),
        GetPage(name: '/localization_controller', page: () => MainLocalController_Roq()),
        // UI Features
        GetPage(name: '/ui_dialog', page: () => DialogGetx_Roq()),
        GetPage(name: '/ui_snackbar_ex1', page: () => SnackbarGetx_Ex1_Roq()),
        GetPage(name: '/ui_snackbar_ex2', page: () => SnackbarGetx_Ex2_Roq()),
        GetPage(name: '/ui_bottomsheet_ex1', page: () => Getx_Bottomsheet()),
        GetPage(name: '/ui_bottomsheet_ex2', page: () => MainBottomsheetGetx_Roq()),
        // GetX Features
        GetPage(name: '/features_nav_args', page: () => MainNav_Argum_Roq()),
        // Theme Management
        GetPage(name: '/theme_basic', page: () => BaiscMainTheme_Roq()),
        GetPage(name: '/theme_custom', page: () => CustomMainTheme_Roq()),
      ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Switched to GetMaterialApp
      title: 'GetX Professional Examples',
      theme: _buildTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: _getPages, // Using GetX's routing system
    );
  }

  // 4. Enhanced Theme Data
  ThemeData _buildTheme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue.shade800, // A more professional primary color
        brightness: Brightness.light,
      ),
      useMaterial3: true,
      fontFamily: 'Tajawal', // Retained for Arabic support
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0, // Modern design often uses zero elevation
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        titleTextStyle: TextStyle(
          fontFamily: 'Tajawal',
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
      cardTheme: CardTheme(
        elevation: 0.5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.grey.shade200, width: 1),
        ),
      ),
      // Retained and slightly enhanced ElevatedButtonTheme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 52), // Slightly taller button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700, // Bolder text
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Professional Examples'),
      ),
      body: SafeArea(
        child: CustomScrollView( // Switched to CustomScrollView for better scrolling and header pinning
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: _buildHeader(context),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              sliver: _buildExampleGrid(context),
            ),
            SliverToBoxAdapter(
              child: _buildFooter(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'مرحباً بك في أمثلة GetX', // Arabic welcome
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.w800,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'اختر مثالاً لاستعراض ميزات GetX المتنوعة', // Arabic subtitle
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            color: Colors.grey.shade600,
          ),
        ),
        const Divider(height: 30),
      ],
    );
  }

  Widget _buildExampleGrid(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1.0, // Adjusted aspect ratio for a square look
      ),
      itemCount: _examples.length,
      itemBuilder: (context, index) {
        final example = _examples[index];
        return _buildExampleCard(
          example: example,
          context: context,
        );
      },
    );
  }

  // 5. Enhanced Card Design
  Widget _buildExampleCard({
    required ExampleItem example,
    required BuildContext context,
  }) {
    return InkWell(
      onTap: () => Get.toNamed(example.route), // Using Get.toNamed
      borderRadius: BorderRadius.circular(16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: example.color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  example.icon,
                  size: 28,
                  color: example.color,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    example.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    example.subtitle,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.grey.shade500,
                      height: 1.2,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Divider(height: 20),
          Text(
            'GetX Package in Flutter\nBy Eng: Ruqaih Hussein Salman',
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
*/
