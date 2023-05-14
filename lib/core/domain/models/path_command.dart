// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:flutter/material.dart';

abstract class PathCommand {
  Offset get to;
  String get intoIos;
  String get intoFlutter;
  intoPath(Path path);

  const PathCommand();

  factory PathCommand.moveTo({required Offset to}) => _MoveTo(to: to);
  factory PathCommand.lineTo({required Offset to}) => _LineTo(to: to);
  factory PathCommand.curveTo({
    required Offset to,
    required Offset controlPoint1,
    required Offset controlPoint2,
  }) =>
      _AddCurve(
          to: to, controlPoint1: controlPoint1, controlPoint2: controlPoint2);
  factory PathCommand.quadCurve({
    required Offset to,
    required Offset controlPoint,
  }) =>
      _AddQuadCurve(to: to, controlPoint: controlPoint);
}

class _MoveTo extends PathCommand {
  @override
  String get intoFlutter => "path.moveTo(${to.dx}, ${to.dy});";

  @override
  String get intoIos => "path.move(to: Offset(${to.dx}, ${to.dy}));";

  @override
  intoPath(Path path) {
    path.moveTo(to.dx, to.dy);
  }

  @override
  final Offset to;

  _MoveTo({
    required this.to,
  });
}

class _LineTo extends PathCommand {
  @override
  String get intoFlutter => "path.lineTo(${to.dx}, ${to.dy});";

  @override
  String get intoIos => "path.addLine(to: Offset(x: ${to.dx}, y: ${to.dy}));";

  @override
  intoPath(Path path) {
    path.lineTo(to.dx, to.dy);
  }

  @override
  final Offset to;

  _LineTo({
    required this.to,
  });
}

class _AddCurve extends PathCommand {
  @override
  String get intoFlutter => """path.cubicTo(
    ${controlPoint1.dx}, ${controlPoint1.dy}, 
    ${controlPoint2.dx}, ${controlPoint2.dy}, 
    ${to.dx}, ${to.dy},
    );""";

  @override
  String get intoIos => """path.addCurve(
    to: Offset(${to.dx}, ${to.dy}), 
    controlPoint1: Offset(${controlPoint1.dx}, ${controlPoint1.dy}), 
    controlPoint2: Offset(${controlPoint2.dx}, ${controlPoint2.dx}),
    );""";

  @override
  intoPath(Path path) {
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, to.dx, to.dy);
  }

  @override
  final Offset to;
  final Offset controlPoint1, controlPoint2;
  _AddCurve({
    required this.to,
    required this.controlPoint1,
    required this.controlPoint2,
  });
}

/*
addQuadCurve({
    required Offset to,
    required Offset controlPoint,
  }) {
    quadraticBezierTo(controlPoint.dx, controlPoint.dy, to.dx, to.dy);
  }
*/

class _AddQuadCurve extends PathCommand {
  @override
  String get intoFlutter => """path.quadraticBezierTo(
    ${controlPoint.dx}, ${controlPoint.dy}, 
    ${to.dx}, ${to.dy},
    );""";

  @override
  String get intoIos => """path.addQuadCurve(
    to: Offset(${to.dx}, ${to.dy}), 
    controlPoint: Offset(${controlPoint.dx}, ${controlPoint.dy}),
    );""";

  @override
  intoPath(Path path) {
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, to.dx, to.dy);
  }

  @override
  final Offset to;
  final Offset controlPoint;
  _AddQuadCurve({
    required this.to,
    required this.controlPoint,
  });
}
