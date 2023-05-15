//

import 'package:flutter/material.dart';
import 'package:svg_renderer/features/path_details/presentation/widgets/generated_path.dart';

class MyCustomPainter extends CustomPainter {
  final Path path;
  MyCustomPainter({
    required this.path,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final painter = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class FixedCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final painter = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke;
    final path = fixedPath(size);
    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
