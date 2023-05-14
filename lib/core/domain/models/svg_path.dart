//

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/double_extension.dart';
import 'package:svg_renderer/configuration/extensions/path_extension.dart';
import 'package:svg_renderer/core/domain/usecases/svg_commands_extractor.dart';
import 'package:xml/xml.dart';

import 'path_step.dart';

class SVGPath {
  final String id;
  final String path;
  final List<PathStep> steps;
  final double totalWidth;
  final double totalHeight;
  SVGPath._({
    required this.id,
    required this.path,
    required this.steps,
    required this.totalWidth,
    required this.totalHeight,
  });

  factory SVGPath.fromXml({
    required XmlElement xmlElement,
    required double width,
    required double height,
  }) {
    RegExp opransReg = RegExp(r"[CcMmLlHhVvZzQqTtAaSsZz][0-9,\.\s]*");
    String commands = xmlElement.getAttribute('d') ?? '';
    final matchs = opransReg.allMatches(commands).toList();
    final steps =
        matchs.map((e) => e.group(0)).toList().whereType<String>().toList();

    final oprands = steps.map((e) => PathStep.fromString(e)).toList();
    return SVGPath._(
      id: xmlElement.getAttribute('id') ?? 'no ID',
      path: commands,
      steps: oprands,
      totalHeight: height,
      totalWidth: width,
    );
  }

  List<String> getPath() {
    final SVGCommandsExtractor extractor =
        SVGCommandsExtractor(totalWidth: totalWidth, totalHeight: totalHeight);

    return extractor.getPath(steps);
  }

  /*

  String widthRatioString(double x) {
    if (x == 0) {
      return "0";
    } else {
      final ratio = x / totalWidth;
      return "${ratio.roundTo()}*width"; // .round()
    }
  }

  String heightRatioString(double y) {
    if (y == 0) {
      return "0";
    } else {
      final ratio = y / totalHeight;
      return "${ratio.roundTo()}*height"; // .round()
    }
  }

  List<String> getPath() {
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
          debugPrint("*** Error: Cannot process command : ${step.command}");
          break;
      }
    }

    lines.add("return path;");
    lines.add("}");
    return lines;
  }

  List<String> appendMoveTo(String cmd, Path path, List<double> operands) {
    final List<String> lines = [];
    if (operands.length % 2 != 0) {
      debugPrint("*** Error: Invalid parameter count in M style token");
      return [];
    }

    for (int i = 0; i < operands.length - 1; i = i + 2) {
      final Offset currentPoint =
          cmd == "m" ? path.lastPosition : const Offset(0, 0);

      final x = operands[i] + currentPoint.dx;
      final y = operands[i + 1] + currentPoint.dy;

      final point = Offset(x, y);

      if (i == 0) {
        path.move(to: point);
        lines.add(
            "path.move(to: Offset(${widthRatioString(x)}, ${heightRatioString(y)}));");
      } else {
        path.addLine(to: point);
        lines.add(
            "path.addLine(to: Offset(x: ${widthRatioString(x)}, y: ${heightRatioString(y)})); // appendMoveTo");
      }
    }

    return lines;
  }

  List<String> appendLineToSinglePoint(
      String cmd, Path path, List<double> operands) {
    final List<String> lines = [];

    if (cmd == "V" || cmd == "v") {
      final Offset currentPoint =
          cmd == "v" ? path.lastPosition : const Offset(0, 0);

      final Offset newPoint =
          Offset(path.lastPosition.dx, operands[0] + currentPoint.dy);
      path.addLine(to: newPoint);
      cmd == "v"
          ? lines.add(
              "path.addRelativeLineTo(to: Offset(${widthRatioString(newPoint.dx)}, ${heightRatioString(newPoint.dy)})); // appendLineToSinglePoint")
          : lines.add(
              "path.addRelativeLineTo(to: Offset(${widthRatioString(newPoint.dx)}, ${heightRatioString(newPoint.dy)})); // appendLineToSinglePoint");
      return lines;
    }
    if (cmd == "H" || cmd == "h") {
      final Offset currentPoint =
          cmd == "h" ? path.lastPosition : const Offset(0, 0);
      final Offset newPoint =
          Offset(operands[0] + currentPoint.dx, path.lastPosition.dy);
      path.addLine(to: newPoint);
      cmd == "h"
          ? lines.add(
              "path.addRelativeLineTo(to: Offset(${widthRatioString(newPoint.dx)}, ${heightRatioString(newPoint.dy)})); // appendLineToSinglePoint 2")
          : lines.add(
              "path.addRelativeLineTo(to: Offset(${widthRatioString(newPoint.dx)}, ${heightRatioString(newPoint.dy)})); // appendLineToSinglePoint 2");

      return lines;
    }

    return lines;
  }

  List<String> appendLineTo(String cmd, Path path, List<double> operands) {
    final List<String> lines = [];
    if (operands.length == 1) {
      return appendLineToSinglePoint(cmd, path, operands);
    }

    for (int i = 0; i < operands.length - 1; i = i + 2) {
      double x = 0;
      double y = 0;
      final currentPoint = path.lastPosition;
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
      lines.add(
          "path.addRelativeLineTo(to: Offset(${widthRatioString(x)}, ${heightRatioString(y)})); // appendLineTo");
    }
    return lines;
  }

  List<String> appendCubicCurve(String cmd, Path path, List<double> operands) {
    final List<String> lines = [];

    if (operands.length % 6 != 0) {
      debugPrint("*** Error: Invalid number of parameters for C command");
      debugPrint("cmd: $cmd, operands: $operands");
      debugPrint("***********************************************");
      return [];
    }

    for (int i = 0; i < operands.length - 1; i = i + 6) {
      final currentPoint = path.lastPosition;
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

  List<String> appendShorthandCubicCurve(
      String cmd, Path path, List<double> operands) {
    final List<String> lines = [];

    if (operands.length % 4 != 0) {
      debugPrint("*** Error: Invalid number of parameters for S command");
      return [];
    }

    // ignore: unused_local_variable
    final Offset lastControlPoint = path.lastPosition;

    for (int i = 0; i < operands.length - 1; i = i + 4) {
      final currentPoint = path.lastPosition;
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

      lines.add(
          "path.addRelativeCurveTo(to: Offset(${widthRatioString(x)}, ${heightRatioString(y)}), control1: Offset(${widthRatioString(x1)}, ${heightRatioString(y1)}), control2: Offset(${widthRatioString(x2)}, ${heightRatioString(y2)}),);");
      // TODO: take care of this [lastControlPoint]
      // ignore: unused_local_variable
      final lastControlPoint = Offset(x2, y2);
    }
    return lines;
  }

  List<String> appendQuadraticCurve(
      String cmd, Path path, List<double> operands) {
    final List<String> lines = [];

    if (operands.length % 4 != 0) {
      debugPrint("*** Error: Invalid number of parameters for Q command");
      return [];
    }

    for (int i = 0; i < operands.length - 1; i = i + 4) {
      final currentPoint = path.lastPosition;
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

  List<String> appendShorthandQuadraticCurve(
      String cmd, Path path, List<double> operands) {
    final List<String> lines = [];

    if (operands.length % 2 != 0) {
      debugPrint("*** Error: Invalid number of parameters for T command");
      return [];
    }
    // if(lastCmd != "Q" && lastCmd != "q" && lastCmd != "T" && lastCmd != "t") {
    //     lastControlPoint = path.currentPoint
    // }

    for (int i = 0; i < operands.length - 1; i = i + 2) {
      final currentPoint = path.lastPosition;
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

  double vectorAngle(
      {required double ux,
      required double uy,
      required double vx,
      required double vy}) {
    final double sign = (ux * vy - uy * vx < 0) ? -1 : 1;
    final double umag = math.sqrt(ux * ux + uy * uy);
    final double vmag = math.sqrt(ux * ux + uy * uy);
    final double dot = ux * vx + uy * vy;

    double div = dot / (umag * vmag);

    if (div > 1) {
      div = 1;
    }

    if (div < -1) {
      div = -1;
    }

    return sign * math.acos(div);
  }

  Offset mapToEllipse({
    required double ox,
    required double oy,
    required double rx,
    required double ry,
    required double cosphi,
    required double sinphi,
    required double centerx,
    required double centery,
  }) {
    final double x = ox * rx;
    final double y = oy * ry;

    final double xp = cosphi * x - sinphi * y;
    final double yp = sinphi * x + cosphi * y;

    return Offset(xp + centerx, yp + centery);
  }

  List<String> appendArc(String cmd, Path path, List<double> operands) {
    final List<String> lines = [];

    if (operands.length % 7 != 0) {
      debugPrint("*** Error: Invalid number of parameters for A command");
      return [];
    }

    for (int offset = 0; offset < operands.length - 1; offset = offset + 7) {
      final currentPoint = path.lastPosition;

      final double px = currentPoint.dx;
      final double py = currentPoint.dy;
      double rx = operands[offset];
      double ry = operands[offset + 1];
      final double xAxisRotation = operands[offset + 2];
      final double largeArcFlag = operands[offset + 3];
      final double sweepFlag = operands[offset + 4];
      final double cx =
          operands[offset + 5] + (cmd == "a" ? currentPoint.dx : 0);
      final double cy =
          operands[offset + 6] + (cmd == "a" ? currentPoint.dy : 0);

      const double tau = math.pi * 2.0;

      final double sinphi = math.sin(xAxisRotation * tau / 360);
      final double cosphi = math.cos(xAxisRotation * tau / 360);

      final double pxp = cosphi * (px - cx) / 2 + sinphi * (py - cy) / 2;
      final double pyp = -sinphi * (px - cx) / 2 + cosphi * (py - cy) / 2;

      if (pxp == 0 && pyp == 0) {
        return [];
      }

      rx = rx.abs();
      ry = ry.abs();

      final double lambda = math.pow(pxp, 2) / math.pow(rx, 2) +
          math.pow(pyp, 2) / math.pow(ry, 2);

      if (lambda > 1) {
        rx *= math.sqrt(lambda);
        ry *= math.sqrt(lambda);
      }

      final double rxsq = math.pow(rx, 2).toDouble();
      final double rysq = math.pow(ry, 2).toDouble();
      final double pxpsq = math.pow(pxp, 2).toDouble();
      final double pypsq = math.pow(pyp, 2).toDouble();

      double radicant = (rxsq * rysq) - (rxsq * pypsq) - (rysq * pxpsq);

      if (radicant < 0) {
        radicant = 0;
      }

      radicant /= (rxsq * pypsq) + (rysq * pxpsq);
      radicant = math.sqrt(radicant) * (largeArcFlag == sweepFlag ? -1 : 1);

      final double centerxp = radicant * rx / ry * pyp;
      final double centeryp = radicant * -ry / rx * pxp;

      final double centerx =
          cosphi * centerxp - sinphi * centeryp + (px + cx) / 2;
      final double centery =
          sinphi * centerxp + cosphi * centeryp + (py + cy) / 2;

      final double vx1 = (pxp - centerxp) / rx;
      final double vy1 = (pyp - centeryp) / ry;
      final double vx2 = (-pxp - centerxp) / rx;
      final double vy2 = (-pyp - centeryp) / ry;

      double ang1 = vectorAngle(ux: 1, uy: 0, vx: vx1, vy: vy1);
      double ang2 = vectorAngle(ux: vx1, uy: vy1, vx: vx2, vy: vy2);

      if (sweepFlag == 0 && ang2 > 0) {
        ang2 -= tau;
      }

      if (sweepFlag == 1 && ang2 < 0) {
        ang2 += tau;
      }

      final int segments =
          math.max((ang2.abs() / (tau / 4.0)).ceil(), 1.0).toInt();

      ang2 /= segments;

      for (int i = 0; i <= segments; i++) {
        final double a = 4.0 / 3.0 * math.tan(ang2 / 4.0);

        final double x1 = math.cos(ang1);
        final double y1 = math.sin(ang1);
        final double x2 = math.cos(ang1 + ang2);
        final double y2 = math.sin(ang1 + ang2);

        final p1 = mapToEllipse(
            ox: x1 - y1 * a,
            oy: y1 + x1 * a,
            rx: rx,
            ry: ry,
            cosphi: cosphi,
            sinphi: sinphi,
            centerx: centerx,
            centery: centery);
        final p2 = mapToEllipse(
            ox: x2 + y2 * a,
            oy: y2 - x2 * a,
            rx: rx,
            ry: ry,
            cosphi: cosphi,
            sinphi: sinphi,
            centerx: centerx,
            centery: centery);
        final p = mapToEllipse(
            ox: x2,
            oy: y2,
            rx: rx,
            ry: ry,
            cosphi: cosphi,
            sinphi: sinphi,
            centerx: centerx,
            centery: centery);

        path.addCurve(to: p, controlPoint1: p1, controlPoint2: p2);

        lines.add(
            "path.addCurve(to: Offset(${widthRatioString(p.dx)}, ${heightRatioString(p.dy)}), controlPoint1: Offset(${widthRatioString(p1.dx)}, ${heightRatioString(p1.dy)}), controlPoint2: Offset(${widthRatioString(p2.dx)}, ${heightRatioString(p2.dy)}),);");
        // TODO: take care of this [lastControlPoint]
        // ignore: unused_local_variable
        final lastControlPoint = p2;

        ang1 += ang2;
      }
    }

    return lines;
  }
  */
}
