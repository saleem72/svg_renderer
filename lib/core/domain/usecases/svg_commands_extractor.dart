// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'dart:ui';

import 'package:svg_renderer/core/domain/models/path_command.dart';
import 'package:svg_renderer/core/domain/usecases/append_arc.dart';
import 'package:svg_renderer/core/domain/usecases/append_cubic_curve.dart';
import 'package:svg_renderer/core/domain/usecases/append_line_to.dart';
import 'package:svg_renderer/core/domain/usecases/append_move_to.dart';
import 'package:svg_renderer/core/domain/usecases/append_quadratic_curve.dart';
import 'package:svg_renderer/core/domain/usecases/append_short_hand_cubic_curve.dart';
import 'package:svg_renderer/core/domain/usecases/append_short_hand_quadratic_curve.dart';
import 'package:svg_renderer/core/domain/usecases/height_ratio_string.dart';
import 'package:svg_renderer/core/domain/usecases/width_ratio_string.dart';

import '../models/path_step.dart';

class SVGCommandsExtractor {
  final AppendArc _appendArcUsecase;
  final AppendCubicCurve _appendCubicCurveUsecase;
  final AppendLineTo _appendLineToUsecase;
  final AppendMoveTo _appendMoveToUsecase;
  final AppendQuadraticCurve _appendQuadraticCurveUsecase;
  final AppendShorthandCubicCurve _appendShorthandCubicCurveUsecase;
  final AppendShorthandQuadraticCurve _appendShorthandQuadraticCurveUsecase;

  SVGCommandsExtractor._({
    required AppendArc appendArc,
    required AppendCubicCurve appendCubicCurve,
    required AppendLineTo appendLineTo,
    required AppendMoveTo appendMoveTo,
    required AppendQuadraticCurve appendQuadraticCurve,
    required AppendShorthandCubicCurve appendShorthandCubicCurve,
    required AppendShorthandQuadraticCurve appendShorthandQuadraticCurve,
  })  : _appendArcUsecase = appendArc,
        _appendCubicCurveUsecase = appendCubicCurve,
        _appendLineToUsecase = appendLineTo,
        _appendMoveToUsecase = appendMoveTo,
        _appendQuadraticCurveUsecase = appendQuadraticCurve,
        _appendShorthandCubicCurveUsecase = appendShorthandCubicCurve,
        _appendShorthandQuadraticCurveUsecase = appendShorthandQuadraticCurve;

  factory SVGCommandsExtractor({
    required double totalWidth,
    required double totalHeight,
  }) {
    return SVGCommandsExtractor._(
      appendArc: AppendArc(),
      appendCubicCurve: AppendCubicCurve(),
      appendLineTo: AppendLineTo(),
      appendMoveTo: AppendMoveTo(),
      appendQuadraticCurve: AppendQuadraticCurve(),
      appendShorthandCubicCurve: AppendShorthandCubicCurve(),
      appendShorthandQuadraticCurve: AppendShorthandQuadraticCurve(),
    );
  }

  List<PathCommand> getPath(List<PathStep> steps) {
    final List<PathCommand> commands = [];

    for (final step in steps) {
      final lastPoint =
          commands.isEmpty ? const Offset(0, 0) : commands.last.to;

      switch (step.command) {
        case "m":
        case "M":
          // done
          final res = appendMoveTo(step.command, step.points, lastPoint);
          commands.addAll(res);
          break;
        case "l":
        case "H":
        case "h":
        case "V":
        case "v":
        case "L":
          // done
          final res = appendLineTo(step.command, step.points, lastPoint);
          commands.addAll(res);
          break;

        case "c":
        case "C":
          // done
          final res = appendCubicCurve(step.command, step.points, lastPoint);
          commands.addAll(res);
          break;
        case "s":
        case "S":
          // done
          final res =
              appendShorthandCubicCurve(step.command, step.points, lastPoint);
          commands.addAll(res);
          break;
        case "q":
        case "Q":
          // done
          final res =
              appendQuadraticCurve(step.command, step.points, lastPoint);
          commands.addAll(res);
          break;
        case "t":
        case "T":
          final res =
              // done
              appendShorthandQuadraticCurve(
                  step.command, step.points, lastPoint);
          commands.addAll(res);
          break;
        case "a":
        case "A":
          final res = appendArc(step.command, step.points, lastPoint);
          commands.addAll(res);
          break;
        case "z":
        case "Z":
          commands.add(PathCommand.close());
          break;

        default:
          break;
      }
    }

    return commands;
  }

  List<PathCommand> appendArc(
      String cmd, List<double> operands, Offset lastPoint) {
    return _appendArcUsecase(cmd, operands, lastPoint);
  }

  List<PathCommand> appendCubicCurve(
      String cmd, List<double> operands, Offset lastPoint) {
    return _appendCubicCurveUsecase(cmd, operands, lastPoint);
  }

  List<PathCommand> appendLineTo(
      String cmd, List<double> operands, Offset lastPoint) {
    return _appendLineToUsecase(cmd, operands, lastPoint);
  }

  List<PathCommand> appendMoveTo(
      String cmd, List<double> operands, Offset lastPoint) {
    return _appendMoveToUsecase(cmd, operands, lastPoint);
  }

  List<PathCommand> appendQuadraticCurve(
      String cmd, List<double> operands, Offset lastPoint) {
    return _appendQuadraticCurveUsecase(cmd, operands, lastPoint);
  }

  List<PathCommand> appendShorthandCubicCurve(
      String cmd, List<double> operands, Offset lastPoint) {
    return _appendShorthandCubicCurveUsecase(cmd, operands, lastPoint);
  }

  List<PathCommand> appendShorthandQuadraticCurve(
      String cmd, List<double> operands, Offset lastPoint) {
    return _appendShorthandQuadraticCurveUsecase(cmd, operands, lastPoint);
  }
}
