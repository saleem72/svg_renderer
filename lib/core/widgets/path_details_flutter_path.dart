//

import 'package:flutter/material.dart';

import '../domain/models/svg_path.dart';
import 'my_custom_painter.dart';

class PathDetailsFlutterPath extends StatelessWidget {
  const PathDetailsFlutterPath({
    super.key,
    required this.path,
  });
  final SVGPath path;
  @override
  Widget build(BuildContext context) {
    return _buildList();
  }

  Widget _buildList() {
    final Path drawing = Path();
    for (final command in path.commands) {
      command.intoPath(drawing);
    }

    return SizedBox(
      height: path.totalHeight,
      width: path.totalWidth,
      child: CustomPaint(
        painter: MyCustomPainter(path: drawing),
        child: const SizedBox.expand(),
      ),
    );
  }
}
