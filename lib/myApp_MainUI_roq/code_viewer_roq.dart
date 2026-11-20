import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/idea.dart';
import 'package:flutter_highlight/themes/darcula.dart';

// Final (not const): the base palettes already declare 'root'.
// Explicit overrides create an Android Studio/IntelliJ-inspired Dart palette.
final Map<String, TextStyle> _studioLightTheme = <String, TextStyle>{
  ...ideaTheme,
  'root': const TextStyle(color: Color(0xFF222222), backgroundColor: Colors.white),
  'keyword': const TextStyle(color: Color(0xFF0033B3), fontWeight: FontWeight.w600),
  'built_in': const TextStyle(color: Color(0xFF0033B3)),
  'builtin': const TextStyle(color: Color(0xFF0033B3)),
  'literal': const TextStyle(color: Color(0xFF0033B3)),
  'type': const TextStyle(color: Color(0xFF871094), fontWeight: FontWeight.w600),
  'class': const TextStyle(color: Color(0xFF871094), fontWeight: FontWeight.w600),
  'title.class': const TextStyle(color: Color(0xFF871094)),
  'title': const TextStyle(color: Color(0xFF871094)),
  'title.function': const TextStyle(color: Color(0xFF00627A)),
  'function': const TextStyle(color: Color(0xFF00627A)),
  'string': const TextStyle(color: Color(0xFF067D17)),
  'number': const TextStyle(color: Color(0xFF1750EB)),
  'comment': const TextStyle(color: Color(0xFF8C8C8C), fontStyle: FontStyle.italic),
  'meta': const TextStyle(color: Color(0xFF9E880D)),
  'params': const TextStyle(color: Color(0xFF222222)),
  'variable': const TextStyle(color: Color(0xFF222222)),
};
final Map<String, TextStyle> _studioDarkTheme = <String, TextStyle>{
  ...darculaTheme,
  'root': const TextStyle(color: Color(0xFFA9B7C6), backgroundColor: Color(0xFF2B2B2B)),
  'keyword': const TextStyle(color: Color(0xFFCC7832), fontWeight: FontWeight.w600),
  'built_in': const TextStyle(color: Color(0xFFCC7832)),
  'builtin': const TextStyle(color: Color(0xFFCC7832)),
  'literal': const TextStyle(color: Color(0xFFCC7832)),
  'type': const TextStyle(color: Color(0xFFFFC66D), fontWeight: FontWeight.w600),
  'class': const TextStyle(color: Color(0xFFFFC66D), fontWeight: FontWeight.w600),
  'title.class': const TextStyle(color: Color(0xFFFFC66D)),
  'title': const TextStyle(color: Color(0xFFFFC66D)),
  'title.function': const TextStyle(color: Color(0xFFFFC66D)),
  'function': const TextStyle(color: Color(0xFFFFC66D)),
  'string': const TextStyle(color: Color(0xFF6A8759)),
  'number': const TextStyle(color: Color(0xFF6897BB)),
  'comment': const TextStyle(color: Color(0xFF808080), fontStyle: FontStyle.italic),
  'meta': const TextStyle(color: Color(0xFFBBB529)),
  'params': const TextStyle(color: Color(0xFFA9B7C6)),
  'variable': const TextStyle(color: Color(0xFFA9B7C6)),
};

class RoqCodeViewer extends StatefulWidget {
  const RoqCodeViewer({super.key, required this.source,
    required this.sourcePath, required this.isDarkMode});
  final String source;
  final String sourcePath;
  final bool isDarkMode;

  @override
  State<RoqCodeViewer> createState() => _RoqCodeViewerState();
}

class _RoqCodeViewerState extends State<RoqCodeViewer> {
  final ScrollController _vertical = ScrollController();
  final ScrollController _horizontal = ScrollController();
  double _fontSize = 13;
  bool? _editorDark;
  bool get _dark => _editorDark ?? widget.isDarkMode;

  @override
  void dispose() {
    _vertical.dispose();
    _horizontal.dispose();
    super.dispose();
  }

  Future<void> _goToLine() async {
    String typed = '';
    final String? selected = await showDialog<String>(context: context,
      builder: (BuildContext dialogContext) => AlertDialog(
        title: const Text('Go to line'),
        content: TextField(
          autofocus: true,
          onChanged: (String value) => typed = value,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Line number'),
          onSubmitted: (String value) => Navigator.of(dialogContext).pop(value),
        ),
        actions: <Widget>[
          TextButton(onPressed: () => Navigator.of(dialogContext).pop(),
            child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.of(dialogContext).pop(typed),
            child: const Text('Go')),
        ],
      ),
    );
    if (!mounted || !_vertical.hasClients) return;
    final int count = '\n'.allMatches(widget.source).length + 1;
    final int? line = int.tryParse(selected ?? '');
    if (line == null || line < 1 || line > count) {
      if (selected != null) ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Enter a line number between 1 and $count')));
      return;
    }
    final double target = ((line - 1) * _fontSize * 1.6).clamp(
      0.0, _vertical.position.maxScrollExtent).toDouble();
    await _vertical.animateTo(target,
      duration: const Duration(milliseconds: 320), curve: Curves.easeOutCubic);
  }

  @override
  Widget build(BuildContext context) {
    final bool dark = _dark;
    final Color background = dark ? const Color(0xFF2B2B2B) : Colors.white;
    final Color foreground = dark ? const Color(0xFFA9B7C6) : const Color(0xFF222222);
    final Color subtle = dark ? const Color(0xFF8A8F98) : const Color(0xFF6E7781);
    final Color chrome = dark ? const Color(0xFF35363A) : const Color(0xFFF3F5F7);
    final Color border = dark ? const Color(0xFF494B50) : const Color(0xFFE0E4E8);
    final int lines = '\n'.allMatches(widget.source).length + 1;
    final String numbers = List<String>.generate(lines, (int i) => '${i + 1}').join('\n');
    final TextStyle mono = TextStyle(fontFamily: 'monospace',
      fontSize: _fontSize, height: 1.6, color: foreground);

    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(color: background,
        border: Border.all(color: border), borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Column(children: <Widget>[
        Container(color: chrome,
          padding: const EdgeInsets.fromLTRB(8, 4, 4, 4),
          child: Column(children: <Widget>[
            Row(children: <Widget>[
              Icon(Icons.code_rounded, color: foreground, size: 19),
              const SizedBox(width: 6),
              Expanded(child: Tooltip(message: widget.sourcePath,
                child: Text('Dart • $lines lines', maxLines: 1,
                  overflow: TextOverflow.ellipsis, style: mono.copyWith(fontSize: 12)))),
              IconButton(tooltip: 'Copy all code', color: foreground,
                icon: const Icon(Icons.copy_all_outlined),
                onPressed: () async {
                  await Clipboard.setData(ClipboardData(text: widget.source));
                  if (context.mounted) ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Source code copied')));
                }),
            ]),
            Row(children: <Widget>[
              Text('Font', style: TextStyle(color: foreground, fontSize: 12)),
              IconButton(tooltip: 'Decrease font size', color: foreground,
                icon: const Icon(Icons.remove),
                onPressed: _fontSize <= 10 ? null : () => setState(() => _fontSize--)),
              Text('${_fontSize.toInt()}', style: TextStyle(color: foreground)),
              IconButton(tooltip: 'Increase font size', color: foreground,
                icon: const Icon(Icons.add),
                onPressed: _fontSize >= 21 ? null : () => setState(() => _fontSize++)),
              const Spacer(),
              IconButton(tooltip: 'Go to line', color: foreground,
                icon: const Icon(Icons.format_list_numbered), onPressed: _goToLine),
              IconButton(tooltip: dark ? 'Light editor' : 'Dark editor', color: foreground,
                icon: Icon(dark ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
                onPressed: () => setState(() => _editorDark = !dark)),
            ]),
          ])),
        Divider(color: border, height: 1),
        Expanded(child: Scrollbar(
          controller: _vertical, thumbVisibility: true,
          child: SingleChildScrollView(
            controller: _vertical,
            child: SingleChildScrollView(
              controller: _horizontal,
              scrollDirection: Axis.horizontal,
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                Container(color: chrome,
                  padding: const EdgeInsets.fromLTRB(12, 12, 10, 16),
                  child: Text(numbers, textAlign: TextAlign.right,
                    style: mono.copyWith(color: subtle))),
                HighlightView(widget.source, language: 'dart',
                  theme: dark ? _studioDarkTheme : _studioLightTheme,
                  padding: const EdgeInsets.fromLTRB(14, 12, 20, 16),
                  textStyle: mono),
              ]),
            ),
          ),
        )),
      ]),
    );
  }
}
