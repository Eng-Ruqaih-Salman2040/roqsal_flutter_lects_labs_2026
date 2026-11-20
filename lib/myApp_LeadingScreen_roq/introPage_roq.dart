import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../myApp_Data_Settings_roq/constants.dart';
import '../myApp_Data_Settings_roq/my_app_settings.dart';

class IntroScreen_Roq extends StatefulWidget {
  const IntroScreen_Roq({super.key});
  @override
  State<IntroScreen_Roq> createState() => _IntroScreenRoqState();
}

class _IntroScreenRoqState extends State<IntroScreen_Roq> {
  final PageController _controller = PageController();
  int _index = 0;
  static const List<_IntroSlide> _slides = <_IntroSlide>[
    _IntroSlide(Icons.school_outlined, 'Learn Flutter by exploring',
      'Browse lecture examples and labs in one organized place. Open any topic to explore its live preview and Dart source code.'),
    _IntroSlide(Icons.code_rounded, 'Read and understand the code',
      'View syntax-highlighted Dart, switch editor colors, resize text, jump to a line, and copy examples for personal study.'),
    _IntroSlide(Icons.emoji_events_outlined, 'Practice and track progress',
      'Try topic-based exercises, answer review quizzes, bookmark examples, and continue from your most recently opened topic.'),
  ];

  void _finish() {
    context.read<MyAppSettings>().markIntroCompleted();
    Navigator.of(context).pushReplacementNamed(flutterMain_rout_Roq);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final bool last = _index == _slides.length - 1;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 24, 24),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(child: Text('ENG RUQAIH SALMAN',
                      maxLines: 1, overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold, color: colors.primary))),
                  TextButton(onPressed: _finish, child: const Text('Skip')),
                ],
              ),
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: _slides.length,
                  onPageChanged: (int value) => setState(() => _index = value),
                  itemBuilder: (BuildContext context, int i) {
                    final _IntroSlide item = _slides[i];
                    return LayoutBuilder(builder: (context, size) =>
                      SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(minHeight: size.maxHeight),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                width: 136, height: 136,
                                decoration: BoxDecoration(
                                  color: colors.primaryContainer,
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                child: Icon(item.icon, size: 78,
                                  color: colors.onPrimaryContainer),
                              ),
                              const SizedBox(height: 30),
                              Text(item.heading, textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold)),
                              const SizedBox(height: 16),
                              Text(item.description, textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  height: 1.5)),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(_slides.length, (int i) =>
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 220),
                    margin: const EdgeInsets.all(4),
                    height: 8,
                    width: i == _index ? 25 : 8,
                    decoration: BoxDecoration(
                      color: i == _index ? colors.primary : colors.outlineVariant,
                      borderRadius: BorderRadius.circular(10)),
                  ))),
              const SizedBox(height: 20),
              SizedBox(width: double.infinity, child: FilledButton.icon(
                onPressed: last ? _finish : () => _controller.nextPage(
                  duration: const Duration(milliseconds: 280),
                  curve: Curves.easeOutCubic),
                icon: Icon(last ? Icons.check_circle_outline : Icons.arrow_forward),
                label: Text(last ? 'Start learning' : 'Next'),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class _IntroSlide {
  const _IntroSlide(this.icon, this.heading, this.description);
  final IconData icon;
  final String heading;
  final String description;
}
