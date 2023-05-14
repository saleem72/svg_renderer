//

import 'dart:ui';

import 'package:flutter/material.dart';

extension PathPonits on Path {
  // Offset get lastPosition {
  //   try {
  //     final PathMetrics pathMetrics = computeMetrics();
  //     if (pathMetrics.isEmpty) {
  //       return const Offset(0, 0);
  //     }
  //     final pathMetric = pathMetrics.first;
  //     final pos = pathMetric.getTangentForOffset(0)?.position;
  //     if (pos != null) {
  //       return pos;
  //     }
  //     return const Offset(0, 0);
  //   } catch (e) {
  //     debugPrint(e.toString());
  //     return const Offset(0, 0);
  //   }
  // }

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
