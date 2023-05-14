// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'dart:ui';

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
    final widthRatioString = WidthRatioString(totalWidth: totalWidth);
    final heightRatioString = HeightRatioString(totalHeight: totalHeight);
    return SVGCommandsExtractor._(
      appendArc: AppendArc(
        widthRatioString: widthRatioString,
        heightRatioString: heightRatioString,
      ),
      appendCubicCurve: AppendCubicCurve(
        widthRatioString: widthRatioString,
        heightRatioString: heightRatioString,
      ),
      appendLineTo: AppendLineTo(
        widthRatioString: widthRatioString,
        heightRatioString: heightRatioString,
      ),
      appendMoveTo: AppendMoveTo(
        widthRatioString: widthRatioString,
        heightRatioString: heightRatioString,
      ),
      appendQuadraticCurve: AppendQuadraticCurve(
        widthRatioString: widthRatioString,
        heightRatioString: heightRatioString,
      ),
      appendShorthandCubicCurve: AppendShorthandCubicCurve(
        widthRatioString: widthRatioString,
        heightRatioString: heightRatioString,
      ),
      appendShorthandQuadraticCurve: AppendShorthandQuadraticCurve(
        widthRatioString: widthRatioString,
        heightRatioString: heightRatioString,
      ),
    );
  }

  List<String> getPath(List<PathStep> steps) {
    final Path path = Path();
    final List<String> lines = [];
    lines.add("Path myPath(Size size) {");
    lines.add("var path = Path();");
    lines.add("final width = size.width;");
    lines.add("final height = size.height;");
    for (final step in steps) {
      switch (step.command) {
        case "m":
        case "M":
          // done
          final res = appendMoveTo(step.command, path, step.points);
          lines.addAll(res);
          break;
        case "l":
        case "H":
        case "h":
        case "V":
        case "v":
        case "L":
          // done
          final res = appendLineTo(step.command, path, step.points);
          lines.addAll(res);
          break;

        case "c":
        case "C":
          // done
          final res = appendCubicCurve(step.command, path, step.points);
          lines.addAll(res);
          break;
        case "s":
        case "S":
          // done
          final res =
              appendShorthandCubicCurve(step.command, path, step.points);
          lines.addAll(res);
          break;
        case "q":
        case "Q":
          // done
          final res = appendQuadraticCurve(step.command, path, step.points);
          lines.addAll(res);
          break;
        case "t":
        case "T":
          final res =
              // done
              appendShorthandQuadraticCurve(step.command, path, step.points);
          lines.addAll(res);
          break;
        case "a":
        case "A":
          final res = appendArc(step.command, path, step.points);
          lines.addAll(res);
          break;
        case "z":
        case "Z":
          path.close();
          lines.add("path.close();");
          break;

        default:
          break;
      }
    }

    lines.add("return path;");
    lines.add("}");
    return lines;
  }

  List<String> appendArc(String cmd, Path path, List<double> operands) {
    return _appendArcUsecase(cmd, path, operands);
  }

  List<String> appendCubicCurve(String cmd, Path path, List<double> operands) {
    return _appendCubicCurveUsecase(cmd, path, operands);
  }

  List<String> appendLineTo(String cmd, Path path, List<double> operands) {
    return _appendLineToUsecase(cmd, path, operands);
  }

  List<String> appendMoveTo(String cmd, Path path, List<double> operands) {
    return _appendMoveToUsecase(cmd, path, operands);
  }

  List<String> appendQuadraticCurve(
      String cmd, Path path, List<double> operands) {
    return _appendQuadraticCurveUsecase(cmd, path, operands);
  }

  List<String> appendShorthandCubicCurve(
      String cmd, Path path, List<double> operands) {
    return _appendShorthandCubicCurveUsecase(cmd, path, operands);
  }

  List<String> appendShorthandQuadraticCurve(
      String cmd, Path path, List<double> operands) {
    return _appendShorthandQuadraticCurveUsecase(cmd, path, operands);
  }
}
