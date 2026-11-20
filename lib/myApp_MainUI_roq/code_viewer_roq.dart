import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/idea.dart';
import 'package:flutter_highlight/themes/darcula.dart';

/// Read-only Dart source viewer shared by Lectures and Labs.
/// The starting colors are the IntelliJ/Android Studio editor palettes.
/// Class, constructor, method, keyword and string colors are explicit.
final Map<String, TextStyle> _studioLightTheme = <String, TextStyle>{
  ...ideaTheme,
  'root': TextStyle(color: Color(0xFF222222), backgroundColor: Color(0xFFFFFFFF)),
  'keyword': TextStyle(color: Color(0xFF0033B3), fontWeight: FontWeight.w600),
  'built_in': TextStyle(color: Color(0xFF0033B3)),
  'builtin': TextStyle(color: Color(0xFF0033B3)),
  'literal': TextStyle(color: Color(0xFF0033B3)),
  'type': TextStyle(color: Color(0xFF871094), fontWeight: FontWeight.w600),
  'class': TextStyle(color: Color(0xFF871094), fontWeight: FontWeight.w600),
  'title.class': TextStyle(color: Color(0xFF871094), fontWeight: FontWeight.w600),
  'title': TextStyle(color: Color(0xFF871094)),
  'title.function': TextStyle(color: Color(0xFF00627A)),
  'function': TextStyle(color: Color(0xFF00627A)),
  'string': TextStyle(color: Color(0xFF067D17)),
  'number': TextStyle(color: Color(0xFF1750EB)),
  'comment': TextStyle(color: Color(0xFF8C8C8C), fontStyle: FontStyle.italic),
  'meta': TextStyle(color: Color(0xFF9E880D)),
  'params': TextStyle(color: Color(0xFF222222)),
  'variable': TextStyle(color: Color(0xFF222222)),
};

final Map<String, TextStyle> _studioDarkTheme = <String, TextStyle>{
  ...darculaTheme,
  'root': TextStyle(color: Color(0xFFA9B7C6), backgroundColor: Color(0xFF2B2B2B)),
  'keyword': TextStyle(color: Color(0xFFCC7832), fontWeight: FontWeight.w600),
  'built_in': TextStyle(color: Color(0xFFCC7832)),
  'builtin': TextStyle(color: Color(0xFFCC7832)),
  'literal': TextStyle(color: Color(0xFFCC7832)),
  'type': TextStyle(color: Color(0xFFFFC66D), fontWeight: FontWeight.w600),
  'class': TextStyle(color: Color(0xFFFFC66D), fontWeight: FontWeight.w600),
  'title.class': TextStyle(color: Color(0xFFFFC66D), fontWeight: FontWeight.w600),
  'title': TextStyle(color: Color(0xFFFFC66D)),
  'title.function': TextStyle(color: Color(0xFFFFC66D)),
  'function': TextStyle(color: Color(0xFFFFC66D)),
  'string': TextStyle(color: Color(0xFF6A8759)),
  'number': TextStyle(color: Color(0xFF6897BB)),
  'comment': TextStyle(color: Color(0xFF808080), fontStyle: FontStyle.italic),
  'meta': TextStyle(color: Color(0xFFBBB529)),
  'params': TextStyle(color: Color(0xFFA9B7C6)),
  'variable': TextStyle(color: Color(0xFFA9B7C6)),
};

class RoqCodeViewer extends StatelessWidget {
  const RoqCodeViewer({
    super.key,
    required this.source,
    required this.sourcePath,
    required this.isDarkMode,
  });

  final String source;
  final String sourcePath;
  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    final Color background = isDarkMode ? const Color(0xFF2B2B2B) : Colors.white;
    final Color foreground = isDarkMode ? const Color(0xFFA9B7C6) : const Color(0xFF222222);
    final Color subtle = isDarkMode ? const Color(0xFF8A8F98) : const Color(0xFF6E7781);
    final Color chrome = isDarkMode ? const Color(0xFF35363A) : const Color(0xFFF3F5F7);
    final Color border = isDarkMode ? const Color(0xFF494B50) : const Color(0xFFE0E4E8);
    final int lineCount = '\n'.allMatches(source).length + 1;
    final String lineNumbers = List<String>.generate(
      lineCount,
      (int i) => (i + 1).toString(),
    ).join('\n');

    return Container(
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: background,
        border: Border.all(color: border),
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            color: chrome,
            child: Row(
              children: <Widget>[
                const Icon(Icons.code_rounded, size: 18),
                const SizedBox(width: 8),
                Expanded(
                  child: Tooltip(
                    message: sourcePath,
                    child: Text(
                      'Dart  •  $lineCount lines',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: foreground, fontSize: 12, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                IconButton(
                  tooltip: 'Copy complete source code',
                  icon: const Icon(Icons.copy_all_outlined, size: 20),
                  color: foreground,
                  onPressed: () async {
                    await Clipboard.setData(ClipboardData(text: source));
                    if (!context.mounted) return;
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Source code copied')),
                    );
                  },
                ),
              ],
            ),
          ),
          Divider(height: 1, thickness: 1, color: border),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.fromLTRB(12, 12, 10, 16),
                      color: chrome,
                      child: Text(
                        lineNumbers,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 13,
                          height: 1.6,
                          color: subtle,
                        ),
                      ),
                    ),
                    HighlightView(
                      source,
                      language: 'dart',
                      theme: isDarkMode ? _studioDarkTheme : _studioLightTheme,
                      padding: const EdgeInsets.fromLTRB(14, 12, 20, 16),
                      textStyle: TextStyle(
                        fontFamily: 'monospace',
                        fontSize: 13,
                        height: 1.6,
                        color: foreground,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
