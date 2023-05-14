//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/path_extension.dart';
import 'package:svg_renderer/core/domain/models/path_command.dart';

import 'height_ratio_string.dart';
import 'width_ratio_string.dart';

class AppendQuadraticCurve {
  final WidthRatioString widthRatioString;
  final HeightRatioString heightRatioString;

  AppendQuadraticCurve({
    required this.widthRatioString,
    required this.heightRatioString,
  });

  List<PathCommand> call(
      String cmd, Path path, List<double> operands, Offset lastPoint) {
    final List<PathCommand> lines = [];

    if (operands.length % 4 != 0) {
      debugPrint("*** Error: Invalid number of parameters for Q command");
      return [];
    }

    for (int i = 0; i < operands.length - 1; i = i + 4) {
      final currentPoint = lastPoint;
      final double x1 = operands[i + 0] + (cmd == "q" ? currentPoint.dx : 0);
      final double y1 = operands[i + 1] + (cmd == "q" ? currentPoint.dy : 0);
      final double x = operands[i + 2] + (cmd == "q" ? currentPoint.dx : 0);
      final double y = operands[i + 3] + (cmd == "q" ? currentPoint.dy : 0);

      path.addQuadCurve(to: Offset(x, y), controlPoint: Offset(x1, y1));
      final command = PathCommand.quadCurve(
        to: Offset(x, y),
        controlPoint: Offset(x1, y1),
      );
      lines.add(command);
    }

    return lines;
  }
}
