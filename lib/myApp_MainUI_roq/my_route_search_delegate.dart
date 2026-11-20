import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../myApp_Data_Settings_roq/my_app_settings.dart';
import 'my_app_routes.dart'
    show kAllRoutes, kRouteNameToRoute, kRouteNameToRouteGroup;
import 'my_route.dart';

/// Search titles, descriptions and their lecture/lab group, with category filters.
class MyRouteSearchDelegate extends SearchDelegate<String> {
  MyRouteSearchDelegate() : super(searchFieldLabel: 'Search lectures, labs and examples');
  String _type = 'All';

  @override
  ThemeData appBarTheme(BuildContext context) => Theme.of(context);

  @override
  List<Widget> buildActions(BuildContext context) => <Widget>[
    if (query.isNotEmpty) IconButton(
      tooltip: 'Clear search', icon: const Icon(Icons.clear),
      onPressed: () => query = '',
    ),
  ];

  @override
  Widget buildLeading(BuildContext context) => IconButton(
    tooltip: 'Back', icon: const Icon(Icons.arrow_back),
    onPressed: () => close(context, ''),
  );

  @override
  Widget buildResults(BuildContext context) => buildSuggestions(context);

  @override
  Widget buildSuggestions(BuildContext context) {
    return StatefulBuilder(builder: (BuildContext context, StateSetter update) {
      final MyAppSettings settings = context.watch<MyAppSettings>();
      final String term = query.trim().toLowerCase();
      final List<MyRoute> base = term.isEmpty
        ? <MyRoute>[
            for (final String name in settings.searchHistory)
              if (kRouteNameToRoute[name] != null) kRouteNameToRoute[name]!,
          ]
        : kAllRoutes.where((MyRoute route) {
            final String section = kRouteNameToRouteGroup[route.routeName]?.groupName ?? '';
            return route.title.toLowerCase().contains(term) ||
              route.description.toLowerCase().contains(term) ||
              section.toLowerCase().contains(term);
          }).toList();
      final List<MyRoute> filtered = base.where((MyRoute route) {
        final String section = (kRouteNameToRouteGroup[route.routeName]?.groupName ?? '')
            .toLowerCase();
        return _type == 'All' ||
          (_type == 'Lects' && section.contains('lecture')) ||
          (_type == 'Labs' && section.startsWith('lab'));
      }).toList();
      return Column(children: <Widget>[
        SingleChildScrollView(scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(children: <Widget>[
            for (final String option in <String>['All', 'Lects', 'Labs'])
              Padding(padding: const EdgeInsets.only(right: 8),
                child: ChoiceChip(label: Text(option), selected: _type == option,
                  onSelected: (_) => update(() => _type = option))),
          ])),
        Expanded(child: filtered.isEmpty
          ? Center(child: Padding(padding: const EdgeInsets.all(24),
            child: Text(term.isEmpty ? 'Search by widget, topic, or lab number.' :
              'No matching examples found.', textAlign: TextAlign.center)))
          : ListView.builder(
              itemCount: filtered.length,
              itemBuilder: (BuildContext context, int index) {
                final MyRoute route = filtered[index];
                final group = kRouteNameToRouteGroup[route.routeName];
                return ListTile(
                  leading: group?.icon ?? const Icon(Icons.code),
                  title: Text(route.title),
                  subtitle: Text(group?.groupName ?? route.description,
                    maxLines: 2, overflow: TextOverflow.ellipsis),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    settings.markRouteOpened(route.routeName);
                    final NavigatorState navigator = Navigator.of(context);
                    close(context, route.routeName);
                    navigator.pushNamed(route.routeName);
                  },
                );
              },
            )),
      ]);
    });
  }
}
