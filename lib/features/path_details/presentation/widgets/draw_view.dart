// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:flutter/material.dart';

import 'package:svg_renderer/features/path_details/presentation/widgets/generated_path.dart';

class DrawView extends StatelessWidget {
  const DrawView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draw"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 32.0),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(),
            CustomPaint(
              size: const Size(300, 100),
              painter: MyCustomPainter(path: myNewPath(const Size(300, 100))),
            ),
            const SizedBox(height: 32),
            Row(),
            CustomPaint(
              size: const Size(300, 100),
              painter: MyCustomPainter(path: myPath(const Size(300, 100))),
            ),
            const SizedBox(height: 32),
            CustomPaint(
              size: const Size(300, 100),
              painter: MyFirstCustomPainter(),
            ),
          ],
        ),
      ),
    );
  }
}

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

class MyFirstCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = leftPath(size);
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
