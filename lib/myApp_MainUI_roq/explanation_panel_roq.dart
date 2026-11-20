import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../myApp_Data_Settings_roq/my_app_settings.dart';

/// Learning notes derived from the route's own title/description.
/// The source code remains the authoritative reference for each example.
class RoqExplanationPanel extends StatelessWidget {
  const RoqExplanationPanel({
    super.key,
    required this.routeName,
    required this.title,
    required this.description,
    required this.sourcePath,
  });

  final String routeName;
  final String title;
  final String description;
  final String sourcePath;

  String get _studyTip {
    final String topic = '$title $description'.toLowerCase();
    if (topic.contains('grid') || topic.contains('listview')) {
      return 'Observe how items are laid out and how scrolling behaves. '
          'Compare the constructor arguments with the preview.';
    }
    if (topic.contains('navigation') || topic.contains('route') || topic.contains('drawer')) {
      return 'Open the preview and try moving between screens. '
          'Locate Navigator calls and the widgets that trigger them.';
    }
    if (topic.contains('sqlite') || topic.contains('storage') || topic.contains('sql')) {
      return 'Identify where the example reads and writes data. '
          'Some storage examples require supported platform services.';
    }
    if (topic.contains('api') || topic.contains('http') || topic.contains('mysql')) {
      return 'Look for the network request and its loading or error handling. '
          'External API and MySQL examples may need a working server.';
    }
    if (topic.contains('provider') || topic.contains('state') || topic.contains('getx')) {
      return 'Find where state is stored and which change causes the UI to rebuild.';
    }
    if (topic.contains('responsive') || topic.contains('layoutbuilder') ||
        topic.contains('mediaquery')) {
      return 'Resize the display or rotate the device if supported. '
          'Compare the layout at different available widths.';
    }
    if (topic.contains('button') || topic.contains('form') || topic.contains('text')) {
      return 'Interact with the visible controls and locate the corresponding '
          'widget properties or callbacks in Source Code.';
    }
    return 'Try the interactive preview. Then open Source Code and identify '
        'the widget tree, inputs, and any callbacks used in the example.';
  }

  @override
  Widget build(BuildContext context) {
    final MyAppSettings settings = context.watch<MyAppSettings>();
    final bool done = settings.isRouteCompleted(routeName);
    return ListView(padding: const EdgeInsets.all(16), children: <Widget>[
      Text(title, style: Theme.of(context).textTheme.headlineSmall),
      const SizedBox(height: 14),
      Card(child: Padding(padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text('About this example', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          Text(description.trim().isEmpty
              ? 'This example belongs to the application’s Flutter learning catalog.'
              : description),
        ]))),
      Card(child: Padding(padding: const EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Text('What to explore', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 8),
          Text(_studyTip),
          const SizedBox(height: 14),
          const Text('1. Run the example in Preview.'),
          const Text('2. Locate its widgets and callbacks in Source Code.'),
          const Text('3. Recreate one change in your own Flutter project.'),
        ]))),
      Card(child: ListTile(
        leading: const Icon(Icons.description_outlined),
        title: const Text('Source file'),
        subtitle: SelectableText(sourcePath.isEmpty ?
            'No source file registered' : sourcePath),
      )),
      const SizedBox(height: 12),
      FilledButton.icon(
        onPressed: () => settings.toggleRouteCompleted(routeName),
        icon: Icon(done ? Icons.check_circle : Icons.check_circle_outline),
        label: Text(done ? 'Mark as not completed' : 'Mark as completed'),
      ),
      const SizedBox(height: 8),
      Text('Notes are study suggestions, not a substitute for reading the original example.',
        textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodySmall),
    ]);
  }
}
