import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../myApp_Data_Settings_roq/constants.dart';

class MyAboutRoute extends StatelessWidget {
  const MyAboutRoute({super.key});

  static final List<Widget> kAboutListTiles = <Widget>[
    const ListTile(
      leading: Icon(Icons.info_outline),
      title: Text('About this learning app'),
      subtitle: Text(APP_DESCRIPTION),
    ),
    ListTile(
      leading: const Icon(Icons.code),
      title: const Text('GitHub project'),
      subtitle: const Text('Browse the source repository'),
      onTap: () => launchUrl(Uri.parse(GITHUB_URL)),
    ),
  ];

  @override
  Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(16), children: <Widget>[
      const Icon(Icons.school_outlined, size: 72),
      const SizedBox(height: 12),
      Text(APP_NAME, textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall),
      const SizedBox(height: 8),
      Text('Eng Ruqaih Salman', textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleMedium),
      const SizedBox(height: 6),
      const Text(APP_VERSION, textAlign: TextAlign.center),
      const SizedBox(height: 18),
      ...kAboutListTiles,
    ],
  );
}

/// Retains the legacy class name for any external references.
class About_Roq extends StatelessWidget {
  const About_Roq({super.key});
  @override
  Widget build(BuildContext context) => const MyAboutRoute();
}
