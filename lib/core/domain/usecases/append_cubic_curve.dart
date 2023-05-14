//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/path_extension.dart';

import 'height_ratio_string.dart';
import 'width_ratio_string.dart';

class AppendCubicCurve {
  final WidthRatioString widthRatioString;
  final HeightRatioString heightRatioString;

  AppendCubicCurve({
    required this.widthRatioString,
    required this.heightRatioString,
  });

  List<String> call(String cmd, Path path, List<double> operands) {
    final List<String> lines = [];

    if (operands.length % 6 != 0) {
      debugPrint("*** Error: Invalid number of parameters for C command");
      debugPrint("cmd: $cmd, operands: $operands");
      debugPrint("***********************************************");
      return [];
    }

    for (int i = 0; i < operands.length - 1; i = i + 6) {
      const currentPoint = Offset(0, 0); // path.lastPosition;
      final double x1 = operands[i + 0] + (cmd == "c" ? currentPoint.dx : 0);
      final double y1 = operands[i + 1] + (cmd == "c" ? currentPoint.dy : 0);
      final double x2 = operands[i + 2] + (cmd == "c" ? currentPoint.dx : 0);
      final double y2 = operands[i + 3] + (cmd == "c" ? currentPoint.dy : 0);
      final double x = operands[i + 4] + (cmd == "c" ? currentPoint.dx : 0);
      final double y = operands[i + 5] + (cmd == "c" ? currentPoint.dy : 0);

      path.addCurve(
        to: Offset(x, y),
        controlPoint1: Offset(x1, y1),
        controlPoint2: Offset(x2, y2),
      );

      lines.add(
          "path.addCurve(to: Offset(${widthRatioString(x)}, ${heightRatioString(y)}), controlPoint1: Offset(${widthRatioString(x1)}, ${heightRatioString(y1)}), controlPoint2: Offset(${widthRatioString(x2)}, ${heightRatioString(y2)}),);");

      // TODO: take care of this [lastControlPoint]
      // ignore: unused_local_variable
      final lastControlPoint = Offset(x2, y2);
    }

    return lines;
  }
}
