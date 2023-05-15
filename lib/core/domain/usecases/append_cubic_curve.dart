//

import 'package:flutter/material.dart';
import 'package:svg_renderer/core/domain/models/path_command.dart';

class AppendCubicCurve {
  AppendCubicCurve();

  List<PathCommand> call(String cmd, List<double> operands, Offset lastPoint) {
    final List<PathCommand> lines = [];

    if (operands.length % 6 != 0) {
      debugPrint("*** Error: Invalid number of parameters for C command");
      debugPrint("cmd: $cmd, operands: $operands");
      debugPrint("***********************************************");
      return [];
    }
    Offset lastControlPoint = lastPoint;
    for (int i = 0; i < operands.length - 1; i = i + 6) {
      final currentPoint = lastControlPoint;
      final double x1 = operands[i + 0] + (cmd == "c" ? currentPoint.dx : 0);
      final double y1 = operands[i + 1] + (cmd == "c" ? currentPoint.dy : 0);
      final double x2 = operands[i + 2] + (cmd == "c" ? currentPoint.dx : 0);
      final double y2 = operands[i + 3] + (cmd == "c" ? currentPoint.dy : 0);
      final double x = operands[i + 4] + (cmd == "c" ? currentPoint.dx : 0);
      final double y = operands[i + 5] + (cmd == "c" ? currentPoint.dy : 0);

      final command = PathCommand.curveTo(
        to: Offset(x, y),
        controlPoint1: Offset(x1, y1),
        controlPoint2: Offset(x2, y2),
      );

      lines.add(command);
      lastControlPoint = command.to;
    }

    return lines;
  }
}
