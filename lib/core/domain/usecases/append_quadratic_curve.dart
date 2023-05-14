//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/path_extension.dart';

import 'height_ratio_string.dart';
import 'width_ratio_string.dart';

class AppendQuadraticCurve {
  final WidthRatioString widthRatioString;
  final HeightRatioString heightRatioString;

  AppendQuadraticCurve({
    required this.widthRatioString,
    required this.heightRatioString,
  });

  List<String> call(String cmd, Path path, List<double> operands) {
    final List<String> lines = [];

    if (operands.length % 4 != 0) {
      debugPrint("*** Error: Invalid number of parameters for Q command");
      return [];
    }

    for (int i = 0; i < operands.length - 1; i = i + 4) {
      const currentPoint = Offset(0, 0); // path.lastPosition;
      final double x1 = operands[i + 0] + (cmd == "q" ? currentPoint.dx : 0);
      final double y1 = operands[i + 1] + (cmd == "q" ? currentPoint.dy : 0);
      final double x = operands[i + 2] + (cmd == "q" ? currentPoint.dx : 0);
      final double y = operands[i + 3] + (cmd == "q" ? currentPoint.dy : 0);

      path.addQuadCurve(to: Offset(x, y), controlPoint: Offset(x1, y1));
      lines.add(
          "path.addQuadCurve(to: Offset(${widthRatioString(x)},  ${heightRatioString(y)}), control: Offset(${widthRatioString(x1)},  ${heightRatioString(y1)}),);");
      // TODO: take care of this [lastControlPoint]
      // ignore: unused_local_variable
      final lastControlPoint = Offset(x1, y1);
    }

    return lines;
  }
}
