import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../myApp_MainUI_roq/my_app_routes.dart'
    show MyRouteGroup, kAboutRoute, kAllRoutes;
import '../myApp_MainUI_roq/my_route.dart';

/// Local-only study preferences; no account or network connection required.
class MyAppSettings extends ChangeNotifier {
  MyAppSettings(this._pref) {
    if (_pref.getStringList(_knownKey) == null) {
      _pref.setStringList(_knownKey, <String>[
        ...kAllRoutes.map((MyRoute route) => route.routeName),
        kAboutRoute.routeName,
      ]);
    }
  }

  final SharedPreferences _pref;
  static const _darkKey = 'DARK_MODE';
  static const _historyKey = 'SEARCH_HISTORY';
  static const _bookmarkKey = 'BOOKMARKED_ROUTES';
  static const _knownKey = 'KNOWN_ROUTES';
  static const _completeKey = 'ROQSAL_COMPLETED_ROUTES_V2';
  static const _exerciseKey = 'ROQSAL_COMPLETED_EXERCISES_V2';
  static const _lastKey = 'ROQSAL_LAST_OPENED_ROUTE';
  static const _introKey = 'ROQSAL_INTRO_COMPLETED_V2';
  static const _quizKey = 'ROQSAL_BEST_QUIZ_SCORE_V2';

  static final Map<String, MyRoute> _routes = <String, MyRoute>{
    for (final MyRoute route in kAllRoutes) route.routeName: route,
  };

  bool get isDarkMode => _pref.getBool(_darkKey) ?? false;
  void setDarkMode(bool value) {
    _pref.setBool(_darkKey, value);
    notifyListeners();
  }

  bool get introCompleted => _pref.getBool(_introKey) ?? false;
  void markIntroCompleted() {
    _pref.setBool(_introKey, true);
    notifyListeners();
  }

  List<String> get searchHistory => _pref.getStringList(_historyKey) ?? <String>[];
  void addSearchHistory(String routeName) {
    if (!_routes.containsKey(routeName)) return;
    final List<String> history = List<String>.from(searchHistory)
      ..remove(routeName)
      ..insert(0, routeName);
    _pref.setStringList(_historyKey, history.take(12).toList());
    notifyListeners();
  }

  List<String> get starredRoutenames => _pref.getStringList(_bookmarkKey) ?? <String>[];
  List<MyRoute> get starredRoutes => <MyRoute>[
    for (final String name in starredRoutenames)
      if (_routes[name] != null) _routes[name]!,
  ];
  bool isStarred(String routeName) => starredRoutenames.contains(routeName);
  void toggleStarred(String routeName) {
    if (!_routes.containsKey(routeName)) return;
    final Set<String> names = starredRoutenames.toSet();
    if (!names.add(routeName)) names.remove(routeName);
    _pref.setStringList(_bookmarkKey, names.toList());
    notifyListeners();
  }
  Widget starStatusOfRoute(String routeName) => IconButton(
    tooltip: isStarred(routeName) ? 'Remove bookmark' : 'Bookmark example',
    icon: Icon(isStarred(routeName) ? Icons.star_rounded : Icons.star_border_rounded),
    color: isStarred(routeName) ? const Color(0xFFE4A326) : null,
    onPressed: () => toggleStarred(routeName),
  );

  List<String> get completedRoutes => _pref.getStringList(_completeKey) ?? <String>[];
  bool isRouteCompleted(String routeName) => completedRoutes.contains(routeName);
  void toggleRouteCompleted(String routeName) {
    if (!_routes.containsKey(routeName)) return;
    final Set<String> names = completedRoutes.toSet();
    if (!names.add(routeName)) names.remove(routeName);
    _pref.setStringList(_completeKey, names.toList());
    notifyListeners();
  }
  int get completedCount => completedRoutes.where(_routes.containsKey).length;
  int get totalRouteCount => _routes.length;

  List<String> get completedExercises => _pref.getStringList(_exerciseKey) ?? <String>[];
  bool isExerciseCompleted(String key) => completedExercises.contains(key);
  void toggleExerciseCompleted(String key) {
    final Set<String> names = completedExercises.toSet();
    if (!names.add(key)) names.remove(key);
    _pref.setStringList(_exerciseKey, names.toList());
    notifyListeners();
  }

  int get bestQuizScore => _pref.getInt(_quizKey) ?? 0;
  void recordQuizScore(int score) {
    if (score > bestQuizScore) {
      _pref.setInt(_quizKey, score);
      notifyListeners();
    }
  }

  String? get lastOpenedRouteName {
    final String? name = _pref.getString(_lastKey);
    return name != null && _routes.containsKey(name) ? name : null;
  }
  MyRoute? get lastOpenedRoute => _routes[lastOpenedRouteName];
  void markRouteOpened(String routeName) {
    if (!_routes.containsKey(routeName)) return;
    _pref.setString(_lastKey, routeName);
    addSearchHistory(routeName);
    markRouteKnown(routeName);
  }

  bool isNewRoute(String routeName) =>
      !(_pref.getStringList(_knownKey)?.contains(routeName) ?? false);
  void markRouteKnown(String routeName) {
    if (!isNewRoute(routeName)) return;
    final Set<String> names = (_pref.getStringList(_knownKey) ?? <String>[]).toSet()
      ..add(routeName);
    _pref.setStringList(_knownKey, names.toList());
    notifyListeners();
  }
  int numNewRoutes(MyRouteGroup group) =>
      group.routes.where((MyRoute route) => isNewRoute(route.routeName)).length;
}
