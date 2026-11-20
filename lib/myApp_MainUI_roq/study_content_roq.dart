import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../myApp_Data_Settings_roq/my_app_settings.dart';
import 'my_app_routes.dart' show kMy_LabAppRoutsUI;

/// Original, additional study exercises mapped to the existing Lab 2–13 groups.
/// These are practice prompts, not part of the lecturer's original source files.
class _StudyExercise {
  const _StudyExercise(this.labIndex, this.title, this.task);
  final int labIndex;
  final String title;
  final String task;
  String get id => 'lab_${labIndex + 2}_exercise';
}

const List<_StudyExercise> _exercises = <_StudyExercise>[
  _StudyExercise(0, 'Lab 2 • Layout widgets',
    'Build the same content using GridView.count and GridView.builder. When does each layout generate its children?'),
  _StudyExercise(1, 'Lab 3 • Layout samples',
    'Create one horizontal list and one vertical list; explain how each responds to scrolling.'),
  _StudyExercise(2, 'Lab 4 • Inputs',
    'Add a TextField and a dropdown menu. Show the selected values in a Text widget.'),
  _StudyExercise(3, 'Lab 5 • Scaffold',
    'Build a page with an AppBar, a floating action button, and a SnackBar.'),
  _StudyExercise(4, 'Lab 6 • Navigation',
    'Navigate to a second screen, pass a string, and display it on the second screen.'),
  _StudyExercise(5, 'Lab 7 • Gestures',
    'Handle onTap and onLongPress in a GestureDetector and show a different message for each.'),
  _StudyExercise(6, 'Lab 8 • Asynchronous work',
    'Use FutureBuilder to show loading, success, and error states of a delayed result.'),
  _StudyExercise(7, 'Lab 9 • Local storage',
    'Design a local item list with add, edit, and delete actions using SQLite concepts.'),
  _StudyExercise(8, 'Lab 10 • Projects and APIs',
    'Compare a local SQLite project with a network API example. Identify where each stores data.'),
  _StudyExercise(9, 'Lab 11 • State foundations',
    'Create a counter with setState. Explain which widget rebuilds when the value changes.'),
  _StudyExercise(10, 'Lab 12 • Adaptive layouts',
    'Use LayoutBuilder to switch from a one-column to a two-column layout based on available width.'),
  _StudyExercise(11, 'Lab 13 • State management',
    'Compare one Provider example with one GetX example. Identify how the UI is notified of changes.'),
];

class _ReviewQuestion {
  const _ReviewQuestion(this.prompt, this.options, this.answer, this.explanation);
  final String prompt;
  final List<String> options;
  final int answer;
  final String explanation;
}

/// Additional review quiz aligned with the visible labs. Not an official exam.
const List<_ReviewQuestion> _questions = <_ReviewQuestion>[
  _ReviewQuestion('Which widget efficiently builds items as they scroll into view?',
    <String>['Column', 'ListView.builder', 'Stack', 'SizedBox'], 1,
    'ListView.builder creates children on demand rather than building the entire list upfront.'),
  _ReviewQuestion('Which widget arranges items in a grid with a fixed cross-axis count?',
    <String>['GridView.count', 'TextField', 'PageView', 'AlertDialog'], 0,
    'GridView.count takes crossAxisCount to determine how many columns or rows fit on the cross axis.'),
  _ReviewQuestion('Which widget is suitable for collecting a short line of typed text?',
    <String>['Divider', 'TextField', 'Spacer', 'Icon'], 1,
    'TextField accepts user-entered text; controllers and callbacks can read its value.'),
  _ReviewQuestion('Which widget usually provides an AppBar and FloatingActionButton slot?',
    <String>['Scaffold', 'Container', 'Text', 'Hero'], 0,
    'Scaffold implements the standard Material page structure.'),
  _ReviewQuestion('What does Navigator.push do?',
    <String>['Closes the app', 'Adds a route to the stack', 'Deletes routes', 'Changes device orientation'], 1,
    'Navigator.push opens a new route on top of the existing navigation stack.'),
  _ReviewQuestion('Which callback is typically used for a long press in GestureDetector?',
    <String>['onLongPress', 'onBuild', 'onFrame', 'onRoute'], 0,
    'GestureDetector exposes onLongPress for the long-press gesture.'),
  _ReviewQuestion('What does FutureBuilder use to represent an asynchronous result?',
    <String>['AsyncSnapshot', 'IconData', 'EdgeInsets', 'BuildOwner'], 0,
    'The builder receives an AsyncSnapshot describing connection state, data, and errors.'),
  _ReviewQuestion('Which package is commonly used for local SQLite databases in Flutter?',
    <String>['http', 'sqflite', 'intl', 'flutter_svg'], 1,
    'sqflite provides SQLite database operations on supported mobile platforms.'),
  _ReviewQuestion('Which feature is usually needed when requesting data from a remote API?',
    <String>['Network access', 'Local-only setState', 'Grid geometry', 'Hero animation'], 0,
    'Remote API calls depend on an available network connection and a responding server.'),
  _ReviewQuestion('What should happen after changing state with setState?',
    <String>['The widget is scheduled to rebuild', 'The package is reinstalled', 'The app restarts', 'The database is deleted'], 0,
    'setState tells Flutter to schedule a rebuild of the State object’s widget subtree.'),
  _ReviewQuestion('Which tool exposes layout constraints to build responsive widgets?',
    <String>['LayoutBuilder', 'SnackBar', 'TextEditingController', 'Navigator'], 0,
    'LayoutBuilder supplies constraints so the returned widget can adapt to available width or height.'),
  _ReviewQuestion('Which concept is central to Provider-based state sharing?',
    <String>['Inheriting shared state through the widget tree', 'Editing AndroidManifest', 'Opening an image picker', 'Managing Gradle repositories'], 0,
    'Provider makes a value or state object accessible to appropriate descendants.'),
];

class RoqPracticeHub extends StatelessWidget {
  const RoqPracticeHub({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 2,
    child: Column(children: <Widget>[
      const Padding(
        padding: EdgeInsets.fromLTRB(16, 14, 16, 4),
        child: Align(alignment: Alignment.centerLeft,
          child: Text('Practice & review',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
      ),
      const TabBar(tabs: <Tab>[
        Tab(icon: Icon(Icons.assignment_outlined), text: 'Exercises'),
        Tab(icon: Icon(Icons.quiz_outlined), text: 'Quiz'),
      ]),
      const Expanded(child: TabBarView(children: <Widget>[
        _ExercisesPage(), _QuizPage(),
      ])),
    ]),
  );
}

class _ExercisesPage extends StatelessWidget {
  const _ExercisesPage();

  @override
  Widget build(BuildContext context) {
    final MyAppSettings settings = context.watch<MyAppSettings>();
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
      itemCount: _exercises.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) return Padding(
          padding: const EdgeInsets.all(8),
          child: Text('${settings.completedExercises.length} / ${_exercises.length} tasks marked complete. '
            'These are supplementary activities for personal practice.'),
        );
        final _StudyExercise exercise = _exercises[index - 1];
        final group = kMy_LabAppRoutsUI[exercise.labIndex];
        return Card(
          margin: const EdgeInsets.only(bottom: 10),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CheckboxListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                  title: Text(exercise.title, style: const TextStyle(fontWeight: FontWeight.w700)),
                  subtitle: Text(exercise.task),
                  value: settings.isExerciseCompleted(exercise.id),
                  onChanged: (_) => settings.toggleExerciseCompleted(exercise.id),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                Align(alignment: Alignment.centerRight,
                  child: TextButton.icon(
                    onPressed: group.routes.isEmpty ? null : () {
                      final String route = group.routes.first.routeName;
                      settings.markRouteOpened(route);
                      Navigator.of(context).pushNamed(route);
                    },
                    icon: const Icon(Icons.open_in_new, size: 18),
                    label: const Text('Open lab example'),
                  ),
                ),
              ]),
          ),
        );
      },
    );
  }
}

class _QuizPage extends StatefulWidget {
  const _QuizPage();
  @override
  State<_QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<_QuizPage> {
  int _index = 0;
  int? _selected;
  int _score = 0;
  bool _checked = false;
  bool _finished = false;

  void _checkOrContinue(MyAppSettings settings) {
    if (_finished) return;
    if (!_checked) {
      if (_selected == null) return;
      if (_selected == _questions[_index].answer) _score++;
      if (_index == _questions.length - 1) settings.recordQuizScore(_score);
      setState(() => _checked = true);
    } else if (_index == _questions.length - 1) {
      setState(() => _finished = true);
    } else {
      setState(() {
        _index++;
        _selected = null;
        _checked = false;
      });
    }
  }

  void _restart() => setState(() {
    _index = 0; _selected = null; _score = 0;
    _checked = false; _finished = false;
  });

  @override
  Widget build(BuildContext context) {
    final MyAppSettings settings = context.watch<MyAppSettings>();
    final ColorScheme colors = Theme.of(context).colorScheme;
    if (_finished) {
      return Center(child: SingleChildScrollView(child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Icon(Icons.emoji_events_outlined, size: 72, color: colors.primary),
          const SizedBox(height: 16),
          Text('Review complete', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 12),
          Text('Your score: $_score / ${_questions.length}',
            style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 8),
          Text('Personal best: ${settings.bestQuizScore} / ${_questions.length}'),
          const SizedBox(height: 20),
          FilledButton.icon(onPressed: _restart, icon: const Icon(Icons.replay),
            label: const Text('Try again')),
        ]),
      )));
    }
    final _ReviewQuestion question = _questions[_index];
    return ListView(padding: const EdgeInsets.all(16), children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        Text('Question ${_index + 1} of ${_questions.length}',
          style: Theme.of(context).textTheme.titleMedium),
        Text('Best ${settings.bestQuizScore}/${_questions.length}'),
      ]),
      const SizedBox(height: 12),
      LinearProgressIndicator(value: (_index + 1) / _questions.length),
      const SizedBox(height: 20),
      Text(question.prompt, style: Theme.of(context).textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.bold)),
      const SizedBox(height: 14),
      for (int i = 0; i < question.options.length; i++)
        Card(child: RadioListTile<int>(
          title: Text(question.options[i]),
          value: i,
          groupValue: _selected,
          onChanged: _checked ? null : (int? value) => setState(() => _selected = value),
        )),
      if (_checked) Card(
        color: _selected == question.answer ? colors.primaryContainer : colors.errorContainer,
        child: Padding(padding: const EdgeInsets.all(14),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Text(_selected == question.answer ? 'Correct answer' :
              'Correct answer: ${question.options[question.answer]}',
              style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Text(question.explanation),
          ])),
      ),
      const SizedBox(height: 18),
      FilledButton(
        onPressed: _selected == null ? null : () => _checkOrContinue(settings),
        child: Text(!_checked ? 'Check answer' :
          _index == _questions.length - 1 ? 'View results' : 'Next question'),
      ),
      const SizedBox(height: 14),
      Text('Supplementary review questions, not the lecturer’s official test.',
        textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodySmall),
    ]);
  }
}
