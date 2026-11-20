/// Supplemental Lab 12 examples.
/// Original login_withResponsive.dart and login_withoutResponsive.dart in the
/// supplied archive were commented out, so these provide working comparisons.
import 'package:flutter/material.dart';

class Lab12ResponsiveLoginRoq extends StatelessWidget {
  const Lab12ResponsiveLoginRoq({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final wide = constraints.maxWidth >= 720;
              return Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 520),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(wide ? 32 : 16),
                        child: const _Lab12LoginForm(
                          responsive: true,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
}

class Lab12FixedWidthLoginRoq extends StatelessWidget {
  const Lab12FixedWidthLoginRoq({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 420,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: const _Lab12LoginForm(responsive: false),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

class _Lab12LoginForm extends StatefulWidget {
  final bool responsive;

  const _Lab12LoginForm({required this.responsive});

  @override
  State<_Lab12LoginForm> createState() => _Lab12LoginFormState();
}

class _Lab12LoginFormState extends State<_Lab12LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;

  @override
  Widget build(BuildContext context) => Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(widget.responsive ? Icons.devices : Icons.smartphone,
                size: 56, color: Theme.of(context).colorScheme.primary),
            const SizedBox(height: 12),
            Text(
              widget.responsive ? 'Responsive login' : 'Fixed-width login',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text(
              widget.responsive
                  ? 'Resizes to fit the available screen width.'
                  : 'Uses a fixed 420 px width for comparison.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email (demo only)',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: (value) => (value == null || !value.contains('@'))
                  ? 'Enter a valid email address'
                  : null,
            ),
            const SizedBox(height: 12),
            TextFormField(
              obscureText: _obscure,
              decoration: InputDecoration(
                labelText: 'Password (demo only)',
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  onPressed: () => setState(() => _obscure = !_obscure),
                  icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              validator: (value) => (value == null || value.length < 4)
                  ? 'Enter at least four characters'
                  : null,
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Demo only — no login request was sent.')),
                  );
                }
              },
              child: const Text('Preview login'),
            ),
          ],
        ),
      );
}
