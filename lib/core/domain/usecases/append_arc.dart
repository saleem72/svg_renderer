//

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:svg_renderer/core/domain/models/path_command.dart';

class AppendArc {
  AppendArc();

  List<PathCommand> call(String cmd, List<double> operands, Offset lastPoint) {
    final List<PathCommand> lines = [];

    if (operands.length % 7 != 0) {
      debugPrint("*** Error: Invalid number of parameters for A command");
      return [];
    }
    Offset lastControlPoint = lastPoint;

    for (int offset = 0; offset < operands.length - 1; offset = offset + 7) {
      final currentPoint = lastControlPoint; // path.lastPosition;
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
      // cosphi * centerxp - sinphi * centeryp + (px + cx) / 2
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
      // for _ in stride(from: 0, to: segments, by: 1)
      for (int i = 0; i < segments; i++) {
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

        final command = PathCommand.curveTo(
          to: p,
          controlPoint1: p1,
          controlPoint2: p2,
        );
        lines.add(command);

        ang1 += ang2;
        lastControlPoint = command.to;
      }
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
}
