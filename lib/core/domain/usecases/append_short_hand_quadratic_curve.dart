//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/path_extension.dart';

import 'height_ratio_string.dart';
import 'width_ratio_string.dart';

class AppendShorthandQuadraticCurve {
  final WidthRatioString widthRatioString;
  final HeightRatioString heightRatioString;

  AppendShorthandQuadraticCurve({
    required this.widthRatioString,
    required this.heightRatioString,
  });

  List<String> call(String cmd, Path path, List<double> operands) {
    final List<String> lines = [];

    if (operands.length % 2 != 0) {
      debugPrint("*** Error: Invalid number of parameters for T command");
      return [];
    }
    // if(lastCmd != "Q" && lastCmd != "q" && lastCmd != "T" && lastCmd != "t") {
    //     lastControlPoint = path.currentPoint
    // }

    for (int i = 0; i < operands.length - 1; i = i + 2) {
      final currentPoint = Offset(0, 0); // path.lastPosition;
      final double x1 =
          currentPoint.dx; //  + (currentPoint.x - lastControlPoint.x)
      final double y1 =
          currentPoint.dy; // + (currentPoint.y - lastControlPoint.y)
      final double x = operands[i + 0] + (cmd == "t" ? currentPoint.dx : 0);
      final double y = operands[i + 1] + (cmd == "t" ? currentPoint.dy : 0);

      path.addQuadCurve(to: Offset(x, y), controlPoint: Offset(x1, y1));
      lines.add(
          "path.addQuadCurve(to: Offset(${widthRatioString(x)}, ${heightRatioString(y)}), controlPoint: Offset(${widthRatioString(x1)}, ${heightRatioString(y1)}),);");
      // TODO: take care of this [lastControlPoint]
      // ignore: unused_local_variable
      final lastControlPoint = Offset(x1, y1);
    }

    return lines;
  }
}
