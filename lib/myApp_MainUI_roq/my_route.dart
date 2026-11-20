import 'package:backdrop/backdrop.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;
import 'code_viewer_roq.dart';
import 'explanation_panel_roq.dart';
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

  Future<String> _loadSourceCode() {
    if (sourceFilePath.isEmpty) {
      return Future<String>.error('Source path has not been configured.');
    }
    return rootBundle.loadString(sourceFilePath);
  }

  @override
  Widget build(BuildContext context) {
    final MyAppSettings settings = Provider.of<MyAppSettings>(context);
    bool isDarkMode = Provider.of<MyAppSettings>(context).isDarkMode;

    return BackdropScaffold(
      appBar: BackdropAppBar(
        title: Row(
          children: [
            if (kIsOnMobile)
              SizedBox(width: 8),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Text(
                  this.title,
                  style: TextStyle(
                    fontSize: kIsOnMobile ? 18 : 20,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: _getAppbarActions(context, isDarkMode),
        automaticallyImplyLeading: false,
        leading: _getAppBarLeading(context),
        centerTitle: false,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
        ),
      ),
      headerHeight: _kFrontLayerMinHeight,
      frontLayerBorderRadius: BorderRadius.zero,
      frontLayer: Builder(
        builder: (BuildContext context) {
          if (routeName == Navigator.defaultRouteName) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: isDarkMode
                      ? [Colors.grey[900]!, Colors.grey[850]!]
                      : [Colors.grey[50]!, Colors.grey[100]!],
                ),
              ),
              child: child,
            );
          } else {
            return DefaultTabController(
              length: 3,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: isDarkMode
                        ? [Colors.grey[900]!, Colors.grey[850]!]
                        : [Colors.grey[50]!, Colors.grey[100]!],
                  ),
                ),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    toolbarHeight: 48,
                    backgroundColor: isDarkMode ? Colors.grey[800]! : Colors.white,
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
                    ),
                    title: TabBar(
                      tabs: const <Tab>[
                        Tab(text: 'Preview'),
                        Tab(text: 'Source Code'),
                        Tab(text: 'Guide'),
                      ],
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 3,
                          color: pPrimaryColor!,
                        ),
                        insets: EdgeInsets.symmetric(horizontal: 16),
                      ),
                      indicatorColor: pPrimaryColor,
                      labelColor: pPrimaryColor,
                      unselectedLabelColor: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                      labelStyle: TextStyle(fontWeight: FontWeight.w600),
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ),
                  body: TabBarView(
                    children: [
                      // Preview Tab with enhanced styling
                      Container(
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: isDarkMode ? Colors.grey[800]! : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 12,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: child,
                        ),
                      ),

                      // Code Tab with enhanced functionality
                      FutureBuilder<String>(
                        future: _loadSourceCode(),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation(pPrimaryColor),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'Loading source code...',
                                    style: TextStyle(
                                      color: isDarkMode ? Colors.grey[300] : Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                          if (snapshot.hasError) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.error_outline,
                                      color: Colors.red,
                                      size: 48,
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'Error loading source code',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.red,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      '${snapshot.error}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          if (!snapshot.hasData || snapshot.data!.isEmpty) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.code_off,
                                      color: isDarkMode ? Colors.grey[500] : Colors.grey[400],
                                      size: 48,
                                    ),
                                    SizedBox(height: 16),
                                    Text(
                                      'No source code available',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: isDarkMode ? Colors.grey[300] : Colors.grey[700],
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'File path:\n$sourceFilePath',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }

                          return RoqCodeViewer(
                            source: snapshot.data!,
                            sourcePath: sourceFilePath,
                            isDarkMode: isDarkMode,
                          );
                        },
                      ),
                      RoqExplanationPanel(
                        routeName: routeName,
                        title: title,
                        description: description,
                        sourcePath: sourceFilePath,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
      backLayer: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isDarkMode
                ? [Colors.grey[850]!, Colors.grey[900]!]
                : [Colors.white70, Colors.white],
          ),
        ),
        child: _getBackdropListTiles(isDarkMode),
      ),
    );
  }

  Widget? _getAppBarLeading(BuildContext context) {
    if (this.routeName == Navigator.defaultRouteName) {
      return null;
    }
    return Container(
      margin: EdgeInsets.only(left: 8),
      child: IconButton(
        icon: Icon(Icons.arrow_back_rounded, size: 24),
        onPressed: () => Navigator.of(context).pop(),
        splashRadius: 20,
      ),
    );
  }

  List<Widget> _getAppbarActions(BuildContext context, bool isDarkMode) {
    final MyAppSettings settings = Provider.of<MyAppSettings>(context);
    final List<Widget> actions = [];

    // Search button for home page
    if (this.routeName == Navigator.defaultRouteName) {
      actions.add(
        Container(
          margin: EdgeInsets.only(right: 4),
          child: IconButton(
            icon: Icon(Icons.search_rounded, size: 24),
            onPressed: () async {
              await showSearch<String>(
                context: context,
                delegate: MyRouteSearchDelegate(),
              );
            },
            splashRadius: 20,
          ),
        ),
      );
    }

    // Quick theme switch is always reachable on the catalog home screen.
    if (routeName == Navigator.defaultRouteName) {
      actions.add(IconButton(
        tooltip: settings.isDarkMode ? 'Switch to light mode' : 'Switch to dark mode',
        icon: Icon(settings.isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
        onPressed: () => settings.setDarkMode(!settings.isDarkMode),
      ));
    }

    // Mark an example completed without leaving its preview.
    if (this.routeName != Navigator.defaultRouteName) {
      actions.add(IconButton(
        tooltip: settings.isRouteCompleted(routeName)
          ? 'Mark as not completed' : 'Mark as completed',
        icon: Icon(settings.isRouteCompleted(routeName)
          ? Icons.check_circle : Icons.check_circle_outline),
        onPressed: () => settings.toggleRouteCompleted(routeName),
      ));
    }

    // Star status for non-home pages
    if (this.routeName != Navigator.defaultRouteName) {
      actions.add(
        Container(
          margin: EdgeInsets.only(right: 4),
          child: settings.starStatusOfRoute(this.routeName),
        ),
      );
    }

    // Info button for links
    if (this.links.isNotEmpty) {
      actions.add(
        Container(
          margin: EdgeInsets.only(right: 8),
          child: PopupMenuButton(
            icon: Icon(Icons.info_outline_rounded, size: 24),
            itemBuilder: (context) {
              return <PopupMenuItem>[
                for (MapEntry<String, String> titleAndLink in this.links.entries)
                  PopupMenuItem(
                    height: 48,
                    child: ListTile(
                      dense: true,
                      leading: Icon(Icons.open_in_new_rounded, size: 20),
                      title: Text(
                        titleAndLink.key,
                        style: TextStyle(fontSize: 14),
                      ),
                      onTap: () => url_launcher.launch(titleAndLink.value),
                    ),
                  )
              ];
            },
            offset: Offset(0, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            splashRadius: 20,
          ),
        ),
      );
    }

    return actions;
  }

  ListView _getBackdropListTiles(bool isDarkMode) {
    return ListView(
      padding: const EdgeInsets.only(bottom: _kFrontLayerMinHeight),
      children: <Widget>[
        // App Header with enhanced design
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: isDarkMode
                  ? [pPrimaryColor!.withOpacity(0.2), pPrimaryColor!.withOpacity(0.1)]
                  : [pPrimaryColor!.withOpacity(0.1), pPrimaryColor!.withOpacity(0.05)],
            ),
            border: Border(
              bottom: BorderSide(
                color: isDarkMode ? Colors.grey[700]! : Colors.grey[300]!,
                width: 1,
              ),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isDarkMode ? Colors.grey[600]! : Colors.grey[300]!,
                    width: 2,
                  ),
                ),
                child: ClipOval(
                  child: isDarkMode ? kAppIcondark : kAppIcon,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      APP_NAME,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: isDarkMode ? Colors.white : Colors.grey[900],
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      APP_VERSION,
                      style: TextStyle(
                        fontSize: 12,
                        color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // About section
        ...MyAboutRoute.kAboutListTiles.map((tile) => Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: isDarkMode ? Colors.grey[800]! : Colors.grey[200]!,
                width: 0.5,
              ),
            ),
          ),
          child: tile,
        )),

        // Dark mode toggle with enhanced design
        Consumer<MyAppSettings>(
          builder: (context, MyAppSettings settings, _) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: isDarkMode ? Colors.grey[800]! : Colors.grey[200]!,
                    width: 0.5,
                  ),
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 4),
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isDarkMode ? Colors.grey[800]! : Colors.grey[100]!,
                  ),
                  child: DayNightSwitcherIcon(
                    isDarkModeEnabled: settings.isDarkMode,
                    dayBackgroundColor: Colors.transparent,
                    nightBackgroundColor: Colors.transparent,
                    sunColor: pPrimaryColor,
                    moonColor: Colors.blueGrey,
                    onStateChanged: (_) {},
                  ),
                ),
                title: Text(
                  'Dark Mode',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  settings.isDarkMode ? 'Enabled' : 'Disabled',
                  style: TextStyle(
                    fontSize: 12,
                    color: isDarkMode ? Colors.grey[400] : Colors.grey[600],
                  ),
                ),
                trailing: Container(
                  width: 60,
                  child: DayNightSwitcher(
                    sunColor: pPrimaryColor,
                    moonColor: Colors.blueGrey,
                    dayBackgroundColor: Colors.grey[200]!,
                    nightBackgroundColor: Colors.grey[800]!,
                    isDarkModeEnabled: settings.isDarkMode,
                    onStateChanged: (bool value) => settings.setDarkMode(value),
                  ),
                ),
                onTap: () {},
              ),
            );
          },
        ),
      ],
    );
  }
}