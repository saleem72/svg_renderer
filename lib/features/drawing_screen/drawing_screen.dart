//

import 'package:flutter/material.dart';
import 'package:svg_renderer/core/widgets/my_custom_painter.dart';

class DrawingScreen extends StatelessWidget {
  const DrawingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawing'),
      ),
      body: Center(
          child: Container(
        color: Colors.amber,
        height: 400,
        width: 400,
        child: CustomPaint(
          painter: FixedCustomPainter(),
          child: const SizedBox.expand(),
        ),
      )),
    );
  }
}
