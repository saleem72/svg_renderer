// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:flutter/material.dart';

import 'package:svg_renderer/core/domain/models/path_command.dart';

class AppendMoveTo {
  AppendMoveTo();

  List<PathCommand> call(String cmd, List<double> operands, Offset lastPoint) {
    final List<PathCommand> lines = [];
    if (operands.length % 2 != 0) {
      debugPrint("*** Error: Invalid parameter count in M style token");
      return [];
    }
    Offset lastControlPoint = lastPoint;
    for (int i = 0; i < operands.length - 1; i = i + 2) {
      final Offset currentPoint =
          cmd == "m" ? lastControlPoint : const Offset(0, 0);

      final x = operands[i] + currentPoint.dx;
      final y = operands[i + 1] + currentPoint.dy;

      final point = Offset(x, y);

      if (i == 0) {
        final command = PathCommand.moveTo(to: point);
        lines.add(command);
        lastControlPoint = command.to;
      } else {
        final command = PathCommand.lineTo(to: point);
        lines.add(command);
        lastControlPoint = command.to;
      }
    }

    return lines;
  }
}
