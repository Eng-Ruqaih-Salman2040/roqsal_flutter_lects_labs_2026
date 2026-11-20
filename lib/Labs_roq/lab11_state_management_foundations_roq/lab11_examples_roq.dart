/// Lab 11 - supplemental examples.
/// The uploaded project did not include a Lab 11 directory or assignment.
/// These are ORIGINAL self-contained demos aligned with the app's state-management lectures.
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Lab11SetStateDemoRoq extends StatefulWidget {
  const Lab11SetStateDemoRoq({super.key});

  @override
  State<Lab11SetStateDemoRoq> createState() => _Lab11SetStateDemoRoqState();
}

class _Lab11SetStateDemoRoqState extends State<Lab11SetStateDemoRoq> {
  int _count = 0;

  @override
  Widget build(BuildContext context) => _Lab11CounterView(
        method: 'setState',
        explanation: 'setState rebuilds this widget when local state changes.',
        count: _count,
        onAdd: () => setState(() => _count++),
        onRemove: () => setState(() => _count--),
        onReset: () => setState(() => _count = 0),
      );
}

class Lab11ValueNotifierDemoRoq extends StatefulWidget {
  const Lab11ValueNotifierDemoRoq({super.key});

  @override
  State<Lab11ValueNotifierDemoRoq> createState() =>
      _Lab11ValueNotifierDemoRoqState();
}

class _Lab11ValueNotifierDemoRoqState
    extends State<Lab11ValueNotifierDemoRoq> {
  final ValueNotifier<int> _count = ValueNotifier<int>(0);

  @override
  void dispose() {
    _count.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ValueListenableBuilder<int>(
        valueListenable: _count,
        builder: (context, value, child) => _Lab11CounterView(
          method: 'ValueNotifier',
          explanation:
              'ValueListenableBuilder rebuilds when a notifier value changes.',
          count: value,
          onAdd: () => _count.value++,
          onRemove: () => _count.value--,
          onReset: () => _count.value = 0,
        ),
      );
}

class _Lab11CountModel extends ChangeNotifier {
  int _value = 0;
  int get value => _value;

  void add() {
    _value++;
    notifyListeners();
  }

  void remove() {
    _value--;
    notifyListeners();
  }

  void reset() {
    _value = 0;
    notifyListeners();
  }
}

class Lab11ProviderDemoRoq extends StatelessWidget {
  const Lab11ProviderDemoRoq({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (_) => _Lab11CountModel(),
        child: Consumer<_Lab11CountModel>(
          builder: (context, model, child) => _Lab11CounterView(
            method: 'Provider / ChangeNotifier',
            explanation:
                'ChangeNotifier shares state and notifies listening widgets.',
            count: model.value,
            onAdd: model.add,
            onRemove: model.remove,
            onReset: model.reset,
          ),
        ),
      );
}

class _Lab11CounterView extends StatelessWidget {
  final String method;
  final String explanation;
  final int count;
  final VoidCallback onAdd;
  final VoidCallback onRemove;
  final VoidCallback onReset;

  const _Lab11CounterView({
    required this.method,
    required this.explanation,
    required this.count,
    required this.onAdd,
    required this.onRemove,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 460),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(method,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall),
                    const SizedBox(height: 8),
                    Text(explanation, textAlign: TextAlign.center),
                    const SizedBox(height: 32),
                    Text('$count',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton.filledTonal(
                          tooltip: 'Decrease',
                          onPressed: onRemove,
                          icon: const Icon(Icons.remove),
                        ),
                        const SizedBox(width: 20),
                        IconButton.filled(
                          tooltip: 'Increase',
                          onPressed: onAdd,
                          icon: const Icon(Icons.add),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    TextButton.icon(
                      onPressed: onReset,
                      icon: const Icon(Icons.restart_alt),
                      label: const Text('Reset'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
