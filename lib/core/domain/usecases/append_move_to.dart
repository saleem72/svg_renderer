// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:flutter/material.dart';

import 'package:svg_renderer/configuration/extensions/path_extension.dart';
import 'package:svg_renderer/core/domain/models/path_command.dart';

import 'height_ratio_string.dart';
import 'width_ratio_string.dart';

class AppendMoveTo {
  final WidthRatioString widthRatioString;
  final HeightRatioString heightRatioString;

  AppendMoveTo({
    required this.widthRatioString,
    required this.heightRatioString,
  });

  List<PathCommand> call(
      String cmd, Path path, List<double> operands, Offset lastPoint) {
    final List<PathCommand> lines = [];
    if (operands.length % 2 != 0) {
      debugPrint("*** Error: Invalid parameter count in M style token");
      return [];
    }

    for (int i = 0; i < operands.length - 1; i = i + 2) {
      final Offset currentPoint = cmd == "m" ? lastPoint : const Offset(0, 0);

      final x = operands[i] + currentPoint.dx;
      final y = operands[i + 1] + currentPoint.dy;

      final point = Offset(x, y);

      if (i == 0) {
        path.move(to: point);
        final command = PathCommand.moveTo(to: point);
        lines.add(command);
      } else {
        path.addLine(to: point);
        final command = PathCommand.lineTo(to: point);
        lines.add(command);
      }
    }

    return lines;
  }
}
