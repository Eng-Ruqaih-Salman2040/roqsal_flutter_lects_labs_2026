import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../myApp_Data_Settings_roq/my_app_settings.dart';
import 'my_app_routes.dart'
    show MyRouteGroup, kAboutRoute, kMy_LabAppRoutsUI, kMy_LectAppRoutsUI,
         kAllRoutes, kRouteNameToRoute;
import 'my_route.dart';
import 'study_content_roq.dart';

/// Five clear primary destinations; exercises and quizzes share Practice.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
  static _MyHomePageState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MyHomePageState>();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final MyAppSettings settings = context.watch<MyAppSettings>();
    return Scaffold(
      body: IndexedStack(index: _currentTabIndex, children: <Widget>[
        _catalogList('Lectures', kMy_LectAppRoutsUI, settings,
          key: const PageStorageKey<String>('lectures')),
        _catalogList('Hands-on labs', kMy_LabAppRoutsUI, settings,
          key: const PageStorageKey<String>('labs')),
        _demosList(settings),
        const RoqPracticeHub(),
        _savedList(settings),
      ]),
      bottomNavigationBar: NavigationBar(
        height: 73,
        selectedIndex: _currentTabIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        onDestinationSelected: (int index) =>
          setState(() => _currentTabIndex = index),
        destinations: const <NavigationDestination>[
          NavigationDestination(icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book), label: 'Lects'),
          NavigationDestination(icon: Icon(Icons.science_outlined),
            selectedIcon: Icon(Icons.science), label: 'Labs'),
          NavigationDestination(icon: Icon(Icons.widgets_outlined),
            selectedIcon: Icon(Icons.widgets), label: 'Demos'),
          NavigationDestination(icon: Icon(Icons.assignment_outlined),
            selectedIcon: Icon(Icons.assignment), label: 'Practice'),
          NavigationDestination(icon: Icon(Icons.bookmark_outline),
            selectedIcon: Icon(Icons.bookmark), label: 'Saved'),
        ],
      ),
    );
  }

  Widget _catalogList(String heading, List<MyRouteGroup> groups,
      MyAppSettings settings, {Key? key}) {
    return ListView(key: key, padding: const EdgeInsets.fromLTRB(12, 12, 12, 20),
      children: <Widget>[
        _welcomeCard(heading, settings),
        const SizedBox(height: 8),
        for (final MyRouteGroup group in groups) _groupCard(group, settings),
      ],
    );
  }

  Widget _welcomeCard(String heading, MyAppSettings settings) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final int total = settings.totalRouteCount;
    final int complete = settings.completedCount;
    final MyRoute? recent = settings.lastOpenedRoute;
    return Card(
      color: colors.primaryContainer,
      child: Padding(padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text(heading, style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: colors.onPrimaryContainer, fontWeight: FontWeight.bold)),
          const SizedBox(height: 6),
          Text('Learn with examples by Eng Ruqaih Salman',
            style: TextStyle(color: colors.onPrimaryContainer)),
          const SizedBox(height: 16),
          LinearProgressIndicator(
            value: total == 0 ? 0 : complete / total,
            backgroundColor: colors.surface.withOpacity(0.7),
            borderRadius: BorderRadius.circular(8),
          ),
          const SizedBox(height: 6),
          Text('$complete / $total examples completed',
            style: TextStyle(color: colors.onPrimaryContainer)),
          if (recent != null) ...<Widget>[
            const SizedBox(height: 12),
            FilledButton.tonalIcon(
              icon: const Icon(Icons.play_arrow_rounded),
              label: Text('Continue: ${recent.title}',
                maxLines: 1, overflow: TextOverflow.ellipsis),
              onPressed: () => _openRoute(recent, settings),
            ),
          ],
        ]),
      ),
    );
  }

  Widget _groupCard(MyRouteGroup group, MyAppSettings settings) {
    final int completed = group.routes
      .where((MyRoute r) => settings.isRouteCompleted(r.routeName)).length;
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      clipBehavior: Clip.antiAlias,
      child: ExpansionTile(
        key: PageStorageKey<String>(group.groupName),
        leading: group.icon,
        title: Text(group.groupName, style: const TextStyle(fontWeight: FontWeight.w700)),
        subtitle: Text('$completed / ${group.routes.length} completed'),
        children: <Widget>[
          for (final MyRoute route in group.routes) _routeTile(route, settings),
        ],
      ),
    );
  }

  Widget _routeTile(MyRoute route, MyAppSettings settings) => ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 14),
    leading: Icon(
      settings.isRouteCompleted(route.routeName) ? Icons.check_circle :
        Icons.play_circle_outline,
      color: settings.isRouteCompleted(route.routeName)
        ? Colors.green : Theme.of(context).colorScheme.primary,
    ),
    title: Text(route.title, maxLines: 2, overflow: TextOverflow.ellipsis),
    subtitle: route.description.trim().isEmpty ? null : Text(route.description,
      maxLines: 2, overflow: TextOverflow.ellipsis),
    trailing: IconButton(
      tooltip: settings.isStarred(route.routeName) ? 'Remove bookmark' : 'Bookmark',
      icon: Icon(settings.isStarred(route.routeName) ? Icons.star : Icons.star_border),
      color: settings.isStarred(route.routeName) ? const Color(0xFFE4A326) : null,
      onPressed: () => settings.toggleStarred(route.routeName),
    ),
    onTap: () => _openRoute(route, settings),
  );

  void _openRoute(MyRoute route, MyAppSettings settings) {
    settings.markRouteOpened(route.routeName);
    Navigator.of(context).pushNamed(route.routeName);
  }

  Widget _demosList(MyAppSettings settings) {
    final List<MyRoute> demos = kAllRoutes.where((MyRoute route) {
      final String title = route.title.toLowerCase();
      return title.contains('sample') || title.contains('demo') ||
          title.contains('project') || title.contains('app');
    }).toList();
    return ListView(key: const PageStorageKey<String>('demos'),
      padding: const EdgeInsets.all(12), children: <Widget>[
        Padding(padding: const EdgeInsets.all(8), child: Text(
          'Demos & projects', style: Theme.of(context).textTheme.titleLarge)),
        const Padding(padding: EdgeInsets.fromLTRB(8, 0, 8, 12),
          child: Text('Working example routes selected from the existing lectures and labs.')),
        for (final MyRoute route in demos) Card(child: _routeTile(route, settings)),
      ],
    );
  }

  Widget _savedList(MyAppSettings settings) {
    final List<MyRoute> completed = <MyRoute>[
      for (final String name in settings.completedRoutes)
        if (kRouteNameToRoute[name] != null) kRouteNameToRoute[name]!,
    ];
    return ListView(key: const PageStorageKey<String>('saved'),
      padding: const EdgeInsets.all(12), children: <Widget>[
        Padding(padding: const EdgeInsets.all(8), child: Text('Your study space',
          style: Theme.of(context).textTheme.titleLarge)),
        Card(child: Padding(padding: const EdgeInsets.all(14),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Text('Progress', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            LinearProgressIndicator(value: settings.totalRouteCount == 0 ? 0 :
              settings.completedCount / settings.totalRouteCount),
            const SizedBox(height: 8),
            Text('${settings.completedCount} of ${settings.totalRouteCount} examples completed'),
            Text('${settings.completedExercises.length} exercises completed'),
            Text('Best review quiz: ${settings.bestQuizScore} correct answers'),
          ]))),
        const SizedBox(height: 12),
        ListTile(title: const Text('Bookmarks'),
          leading: const Icon(Icons.bookmark_rounded),
          subtitle: Text('${settings.starredRoutes.length} saved examples')),
        if (settings.starredRoutes.isEmpty)
          const Padding(padding: EdgeInsets.all(18),
            child: Text('Tap the star on an example to save it here.')),
        for (final MyRoute route in settings.starredRoutes)
          Card(child: _routeTile(route, settings)),
        const SizedBox(height: 8),
        ListTile(title: const Text('Completed examples'),
          leading: const Icon(Icons.check_circle_outline),
          subtitle: Text('${completed.length} topics')),
        for (final MyRoute route in completed)
          Card(child: _routeTile(route, settings)),
        const Divider(),
        Card(child: ListTile(
          leading: const Icon(Icons.info_outline),
          title: const Text('About this app'),
          onTap: () => Navigator.of(context).pushNamed(kAboutRoute.routeName),
        )),
      ],
    );
  }
}
