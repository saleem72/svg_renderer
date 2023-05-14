//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/path_extension.dart';
import 'package:svg_renderer/core/domain/models/path_command.dart';

import 'height_ratio_string.dart';
import 'width_ratio_string.dart';

class AppendShorthandQuadraticCurve {
  final WidthRatioString widthRatioString;
  final HeightRatioString heightRatioString;

  AppendShorthandQuadraticCurve({
    required this.widthRatioString,
    required this.heightRatioString,
  });

  List<PathCommand> call(
      String cmd, Path path, List<double> operands, Offset lastPoint) {
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
