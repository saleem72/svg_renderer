//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/path_extension.dart';
import 'package:svg_renderer/core/domain/models/path_command.dart';

import 'height_ratio_string.dart';
import 'width_ratio_string.dart';

class AppendShorthandCubicCurve {
  final WidthRatioString widthRatioString;
  final HeightRatioString heightRatioString;

  AppendShorthandCubicCurve({
    required this.widthRatioString,
    required this.heightRatioString,
  });

  List<PathCommand> call(
      String cmd, Path path, List<double> operands, Offset lastPoint) {
    final List<PathCommand> lines = [];

    if (operands.length % 4 != 0) {
      debugPrint("*** Error: Invalid number of parameters for S command");
      return [];
    }

    // ignore: unused_local_variable
    final Offset lastControlPoint = lastPoint;
    // path.lastPosition;

    for (int i = 0; i < operands.length - 1; i = i + 4) {
      final currentPoint = lastPoint;
      final double x1 =
          currentPoint.dx; // + (currentPoint.dx - lastControlPoint.dx)
      final double y1 =
          currentPoint.dy; //  + (currentPoint.dy - lastControlPoint.dy)
      final double x2 = operands[i + 0] + (cmd == "s" ? currentPoint.dx : 0);
      final double y2 = operands[i + 1] + (cmd == "s" ? currentPoint.dy : 0);
      final double x = operands[i + 2] + (cmd == "s" ? currentPoint.dx : 0);
      final double y = operands[i + 3] + (cmd == "s" ? currentPoint.dy : 0);

      path.addCurve(
          to: Offset(x, y),
          controlPoint1: Offset(x1, y1),
          controlPoint2: Offset(x2, y2));
      final command = PathCommand.curveTo(
        to: Offset(x, y),
        controlPoint1: Offset(x1, y1),
        controlPoint2: Offset(x2, y2),
      );

      lines.add(command);
    }
    return lines;
  }
}
