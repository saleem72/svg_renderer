//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/path_extension.dart';
import 'package:svg_renderer/core/domain/models/path_command.dart';

import 'height_ratio_string.dart';
import 'width_ratio_string.dart';

class AppendLineTo {
  final WidthRatioString widthRatioString;
  final HeightRatioString heightRatioString;

  AppendLineTo({
    required this.widthRatioString,
    required this.heightRatioString,
  });

  List<PathCommand> call(
      String cmd, Path path, List<double> operands, Offset lastPoint) {
    final List<PathCommand> lines = [];
    if (operands.length == 1) {
      return appendLineToSinglePoint(cmd, path, operands, lastPoint);
    }

    for (int i = 0; i < operands.length - 1; i = i + 2) {
      double x = 0;
      double y = 0;
      final currentPoint = lastPoint;
      switch (cmd) {
        case "l":
          x = currentPoint.dx + operands[i];
          y = currentPoint.dy + operands[i + 1];
          break;
        case "L":
          x += operands[i];
          if (i == operands.length - 1) {
            debugPrint("*** Error: Invalid parameter count in L style token");
            return [];
          }
          y = operands[1];
          break;
        case "h":
          x = currentPoint.dx;
          break;
        case "H":
          x += operands[i];
          y = currentPoint.dy;
          break;
        case "v":
          y = currentPoint.dy;
          break;
        case "V":
          y += operands[i];
          x = currentPoint.dx;
          break;
        default:
          debugPrint("*** Error: Unrecognised L style command.");
          return [];
      }
      path.addLine(to: Offset(x, y));
      final command = PathCommand.lineTo(to: Offset(x, y));
      lines.add(command);
    }
    return lines;
  }

  List<PathCommand> appendLineToSinglePoint(
      String cmd, Path path, List<double> operands, Offset lastPonit) {
    final List<PathCommand> lines = [];

    // const lastPonit = Offset(0, 0); // path.lastPosition;

    if (cmd == "V" || cmd == "v") {
      final Offset currentPoint = cmd == "v" ? lastPonit : const Offset(0, 0);

      final Offset newPoint =
          Offset(lastPonit.dx, operands[0] + currentPoint.dy);
      path.addLine(to: newPoint);

      final command = PathCommand.lineTo(to: newPoint);

      lines.add(command);
      return lines;
    }
    if (cmd == "H" || cmd == "h") {
      final Offset currentPoint = cmd == "h" ? lastPonit : const Offset(0, 0);
      final Offset newPoint =
          Offset(operands[0] + currentPoint.dx, lastPonit.dy);
      path.addLine(to: newPoint);
      final command = PathCommand.lineTo(to: newPoint);
      lines.add(command);

      return lines;
    }

    return lines;
  }
}
