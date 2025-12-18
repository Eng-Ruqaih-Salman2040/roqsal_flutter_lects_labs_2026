/*
import 'package:backdrop/backdrop.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';

import '../myApp_Data_Settings_roq/my_app_settings.dart';
import '../myApp_Data_Settings_roq/thems_roq.dart';
import 'about.dart';
import '../myApp_Data_Settings_roq/constants.dart'
    show APP_NAME, APP_VERSION, GITHUB_URL, PlatformType, kAppIcon, kAppIcondark, kIsOnMobile, kPlatformType;

import 'home_page.dart';
import 'my_route_search_delegate.dart';

class MyRoute extends StatelessWidget {
  static const _kFrontLayerMinHeight = 128.0;

  final String sourceFilePath;
  final Widget child;
  final String? _title;
  final String description;
  final Map<String, String> links;
  final String? _routeName;
  final Iterable<PlatformType> supportedPlatforms;

  const MyRoute({
    Key? key,
    required this.sourceFilePath,
    required this.child,
    String? title,
    this.description = '',
    this.links = const <String, String>{},
    String? routeName,
    this.supportedPlatforms = PlatformType.values,
  })  : _title = title,
        _routeName = routeName,
        super(key: key);

  String get routeName {
    return this._routeName ?? '/${this.child.runtimeType.toString()}';
  }

  String get title {
    return _title ?? this.routeName;
  }

  @override
  Widget build(BuildContext context) {
    final MyAppSettings settings = Provider.of<MyAppSettings>(context);
    bool ThemeType_roq = Provider.of<MyAppSettings>(context).isDarkMode;

    final IconButton? appbarLeading =
    (kIsOnMobile || this.routeName == Navigator.defaultRouteName)
        ? null
        : IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );

    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(this.title),
        ),
        actions: _getAppbarActions(context),
        automaticallyImplyLeading: false,
        leading: appbarLeading,
      ),
      headerHeight: _kFrontLayerMinHeight,
      frontLayerBorderRadius: BorderRadius.zero,
      frontLayer: Builder(
        builder: (BuildContext context) => this.child,
      ),
      backLayer: Container(
        color: ThemeType_roq ? null : Colors.white70,
        child: _getBackdropListTiles(ThemeType_roq),
      ),
    );
  }

  List<Widget> _getAppbarActions(BuildContext context) {
    final MyAppSettings settings = Provider.of<MyAppSettings>(context);

    return <Widget>[
      if (this.routeName == Navigator.defaultRouteName)
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () async {
            await showSearch<String>(
              context: context,
              delegate: MyRouteSearchDelegate(),
            );
          },
        ),
      if (this.routeName != Navigator.defaultRouteName)
        settings.starStatusOfRoute(this.routeName),
      if (this.links.isNotEmpty)
        PopupMenuButton(
          icon: Icon(Icons.info_outline),
          itemBuilder: (context) {
            return <PopupMenuItem>[
              for (MapEntry<String, String> titleAndLink in this.links.entries)
                PopupMenuItem(
                  child: ListTile(
                    title: Text(titleAndLink.key),
                    trailing: IconButton(
                      icon: const Icon(Icons.open_in_new),
                      tooltip: titleAndLink.value,
                      onPressed: () => url_launcher.launch(titleAndLink.value),
                    ),
                    onTap: () => url_launcher.launch(titleAndLink.value),
                  ),
                )
            ];
          },
        ),
    ];
  }

  ListView _getBackdropListTiles(bool ThemeType) {
    return ListView(
      padding: const EdgeInsets.only(bottom: _kFrontLayerMinHeight),
      children: <Widget>[
        ListTile(
          leading: ThemeType
              ? ClipOval(child: kAppIcondark)
              : ClipOval(child: kAppIcon),
          title: const Text(APP_NAME),
          subtitle: const Text(APP_VERSION),
        ),
        ...MyAboutRoute.kAboutListTiles,
        Consumer<MyAppSettings>(builder: (context, MyAppSettings settings, _) {
          return ListTile(
            onTap: () {},
            leading: DayNightSwitcherIcon(
              isDarkModeEnabled: settings.isDarkMode,
              dayBackgroundColor: Colors.white70,
              sunColor: pPrimaryColor,
              onStateChanged: (_) {},
            ),
            title: Text('Dark mode : ${settings.isDarkMode ? 'ON' : 'OFF'}'),
            trailing: DayNightSwitcher(
              sunColor: pPrimaryColor,
              dayBackgroundColor: Colors.white70,
              isDarkModeEnabled: settings.isDarkMode,
              onStateChanged: (bool value) => settings.setDarkMode(value),
            ),
          );
        }),
      ],
    );
  }
}*/


import 'package:backdrop/backdrop.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/github.dart';
import 'package:flutter/services.dart';

import '../myApp_Data_Settings_roq/my_app_settings.dart';
import '../myApp_Data_Settings_roq/thems_roq.dart';
import 'about.dart';
import '../myApp_Data_Settings_roq/constants.dart'
    show APP_NAME, APP_VERSION, GITHUB_URL, PlatformType, kAppIcon, kAppIcondark, kIsOnMobile, kPlatformType;

import 'home_page.dart';
import 'my_route_search_delegate.dart';

class MyRoute extends StatelessWidget {
  static const _kFrontLayerMinHeight = 128.0;

  final String sourceFilePath;
  final Widget child;
  final String? _title;
  final String description;
  final Map<String, String> links;
  final String? _routeName;
  final Iterable<PlatformType> supportedPlatforms;

  const MyRoute({
    Key? key,
    required this.sourceFilePath,
    required this.child,
    String? title,
    this.description = '',
    this.links = const <String, String>{},
    String? routeName,
    this.supportedPlatforms = PlatformType.values,
  })  : _title = title,
        _routeName = routeName,
        super(key: key);

  String get routeName {
    return this._routeName ?? '/${this.child.runtimeType.toString()}';
  }

  String get title {
    return _title ?? this.routeName;
  }

  Future<String> _loadSourceCode() async {
    try {
      return await rootBundle.loadString(sourceFilePath);
    } catch (e) {
      return '// Unable to load source code from: $sourceFilePath\n// Error: $e';
    }
  }

  @override
  Widget build(BuildContext context) {
    final MyAppSettings settings = Provider.of<MyAppSettings>(context);
    bool ThemeType_roq = Provider.of<MyAppSettings>(context).isDarkMode;

    final IconButton? appbarLeading =
    (kIsOnMobile || this.routeName == Navigator.defaultRouteName)
        ? null
        : IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );

    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(this.title),
        ),
        actions: _getAppbarActions(context),
        automaticallyImplyLeading: false,
        leading: appbarLeading,
      ),
      headerHeight: _kFrontLayerMinHeight,
      frontLayerBorderRadius: BorderRadius.zero,
      frontLayer: Builder(
        builder: (BuildContext context) {
          if (routeName == Navigator.defaultRouteName) {
            return this.child;
          } else {
            return DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  toolbarHeight: 48,
                  backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
                  title: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.preview, size: 20), text: 'Preview'),
                      Tab(icon: Icon(Icons.code, size: 20), text: 'Code'),
                    ],
                    indicatorColor: Theme.of(context).tabBarTheme.indicatorColor,
                    labelColor: Theme.of(context).tabBarTheme.labelColor,
                    unselectedLabelColor: Theme.of(context).tabBarTheme.unselectedLabelColor,
                  ),
                ),
                body: TabBarView(
                  children: [
                    // Preview Tab
                    this.child,

                    // Code Tab
                    FutureBuilder<String>(
                      future: _loadSourceCode(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        }
                        if (snapshot.hasError) {
                          return Center(
                            child: Text(
                              'Error loading source code:\n${snapshot.error}',
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        }
                        if (!snapshot.hasData || snapshot.data!.isEmpty) {
                          return Center(
                            child: Text(
                              'No source code available\n\nFile path:\n$sourceFilePath',
                              textAlign: TextAlign.center,
                            ),
                          );
                        }

                        return Container(
                          color: githubTheme['root']?.backgroundColor ?? Colors.white,
                          child: SingleChildScrollView(
                            child: HighlightView(
                              snapshot.data!,
                              language: 'dart',
                              theme: githubTheme,
                              padding: EdgeInsets.all(16),
                              textStyle: TextStyle(
                                fontFamily: 'monospace',
                                fontSize: 14,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
      backLayer: Container(
        color: ThemeType_roq ? null : Colors.white70,
        child: _getBackdropListTiles(ThemeType_roq),
      ),
    );
  }

  List<Widget> _getAppbarActions(BuildContext context) {
    final MyAppSettings settings = Provider.of<MyAppSettings>(context);

    return <Widget>[
      if (this.routeName == Navigator.defaultRouteName)
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () async {
            await showSearch<String>(
              context: context,
              delegate: MyRouteSearchDelegate(),
            );
          },
        ),
      if (this.routeName != Navigator.defaultRouteName)
        settings.starStatusOfRoute(this.routeName),
      if (this.links.isNotEmpty)
        PopupMenuButton(
          icon: Icon(Icons.info_outline),
          itemBuilder: (context) {
            return <PopupMenuItem>[
              for (MapEntry<String, String> titleAndLink in this.links.entries)
                PopupMenuItem(
                  child: ListTile(
                    title: Text(titleAndLink.key),
                    trailing: IconButton(
                      icon: const Icon(Icons.open_in_new),
                      tooltip: titleAndLink.value,
                      onPressed: () => url_launcher.launch(titleAndLink.value),
                    ),
                    onTap: () => url_launcher.launch(titleAndLink.value),
                  ),
                )
            ];
          },
        ),
    ];
  }

  ListView _getBackdropListTiles(bool ThemeType) {
    return ListView(
      padding: const EdgeInsets.only(bottom: _kFrontLayerMinHeight),
      children: <Widget>[
        ListTile(
          leading: ThemeType
              ? ClipOval(child: kAppIcondark)
              : ClipOval(child: kAppIcon),
          title: const Text(APP_NAME),
          subtitle: const Text(APP_VERSION),
        ),
        ...MyAboutRoute.kAboutListTiles,
        Consumer<MyAppSettings>(builder: (context, MyAppSettings settings, _) {
          return ListTile(
            onTap: () {},
            leading: DayNightSwitcherIcon(
              isDarkModeEnabled: settings.isDarkMode,
              dayBackgroundColor: Colors.white70,
              sunColor: pPrimaryColor,
              onStateChanged: (_) {},
            ),
            title: Text('Dark mode : ${settings.isDarkMode ? 'ON' : 'OFF'}'),
            trailing: DayNightSwitcher(
              sunColor: pPrimaryColor,
              dayBackgroundColor: Colors.white70,
              isDarkModeEnabled: settings.isDarkMode,
              onStateChanged: (bool value) => settings.setDarkMode(value),
            ),
          );
        }),
      ],
    );
  }
}
