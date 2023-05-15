//

import 'package:flutter/material.dart';
import 'package:svg_renderer/core/domain/models/path_command.dart';

class AppendShorthandQuadraticCurve {
  AppendShorthandQuadraticCurve();

  List<PathCommand> call(String cmd, List<double> operands, Offset lastPoint) {
    final List<PathCommand> lines = [];

    if (operands.length % 2 != 0) {
      debugPrint("*** Error: Invalid number of parameters for T command");
      return [];
    }
    // if(lastCmd != "Q" && lastCmd != "q" && lastCmd != "T" && lastCmd != "t") {
    //     lastControlPoint = path.currentPoint
    // }

    for (int i = 0; i < operands.length - 1; i = i + 2) {
      final currentPoint = lastPoint;
      final double x1 =
          currentPoint.dx; //  + (currentPoint.x - lastControlPoint.x)
      final double y1 =
          currentPoint.dy; // + (currentPoint.y - lastControlPoint.y)
      final double x = operands[i + 0] + (cmd == "t" ? currentPoint.dx : 0);
      final double y = operands[i + 1] + (cmd == "t" ? currentPoint.dy : 0);

      final command = PathCommand.quadCurve(
        to: Offset(x, y),
        controlPoint: Offset(x1, y1),
      );
      lines.add(command);
    }

    return lines;
  }
}
