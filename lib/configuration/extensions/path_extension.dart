//

import 'dart:ui';

import 'package:flutter/material.dart';

extension PathPonits on Path {
  move({required Offset to}) {
    moveTo(to.dx, to.dy);
  }

  addLine({required Offset to}) {
    lineTo(to.dx, to.dy);
  }

  addCurve({
    required Offset to,
    required Offset controlPoint1,
    required Offset controlPoint2,
  }) {
    cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, to.dx, to.dy);
  }

  addQuadCurve({
    required Offset to,
    required Offset controlPoint,
  }) {
    quadraticBezierTo(controlPoint.dx, controlPoint.dy, to.dx, to.dy);
  }
}
