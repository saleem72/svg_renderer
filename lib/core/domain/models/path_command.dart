// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:flutter/material.dart';
import 'package:svg_renderer/core/domain/usecases/height_ratio_string.dart';
import 'package:svg_renderer/core/domain/usecases/width_ratio_string.dart';

abstract class PathCommand {
  Offset get to;
  String intoIos(
      WidthRatioString widthRatioString, HeightRatioString heightRatioString);
  String intoFlutter(
      WidthRatioString widthRatioString, HeightRatioString heightRatioString);
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

  factory PathCommand.close() => _CLosePath();
}

class _MoveTo extends PathCommand {
  @override
  String intoFlutter(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      "path.moveTo(${widthRatioString(to.dx)}, ${heightRatioString(to.dy)});";

  @override
  String intoIos(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      "path.move(to: Offset(${widthRatioString(to.dx)}, ${heightRatioString(to.dy)}));";

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
  String intoFlutter(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      "path.lineTo(${widthRatioString(to.dx)}, ${heightRatioString(to.dy)});";

  @override
  String intoIos(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      "path.addLine(to: Offset(x: ${widthRatioString(to.dx)}, y: ${heightRatioString(to.dy)}));";

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
  final Offset to;
  final Offset controlPoint1;
  final Offset controlPoint2;

  _AddCurve({
    required this.to,
    required this.controlPoint1,
    required this.controlPoint2,
  });

  @override
  String intoFlutter(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      """path.cubicTo(
    ${widthRatioString(controlPoint1.dx)}, ${heightRatioString(controlPoint1.dy)}, 
    ${widthRatioString(controlPoint2.dx)}, ${heightRatioString(controlPoint2.dy)}, 
    ${widthRatioString(to.dx)}, ${heightRatioString(to.dy)},
    );""";

  @override
  String intoIos(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      """path.addCurve(
    to: Offset(${widthRatioString(to.dx)}, ${heightRatioString(to.dy)}), 
    controlPoint1: Offset(${widthRatioString(controlPoint1.dx)}, ${heightRatioString(controlPoint1.dy)}), 
    controlPoint2: Offset(${widthRatioString(controlPoint2.dx)}, ${heightRatioString(controlPoint2.dy)}),
    );""";

  @override
  intoPath(Path path) {
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, to.dx, to.dy);
  }
}

class _AddQuadCurve extends PathCommand {
  @override
  final Offset to;
  final Offset controlPoint;

  _AddQuadCurve({
    required this.to,
    required this.controlPoint,
  });

  @override
  String intoFlutter(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      """path.quadraticBezierTo(
    ${widthRatioString(controlPoint.dx)}, ${heightRatioString(controlPoint.dy)}, 
    ${widthRatioString(to.dx)}, ${heightRatioString(to.dy)},
    );""";

  @override
  String intoIos(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      """path.addQuadCurve(
    to: Offset(${widthRatioString(to.dx)}, ${heightRatioString(to.dy)}), 
    controlPoint: Offset(${widthRatioString(controlPoint.dx)}, ${heightRatioString(controlPoint.dy)}),
    );""";

  @override
  intoPath(Path path) {
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, to.dx, to.dy);
  }
}

class _CLosePath extends PathCommand {
  @override
  String intoFlutter(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      "path.close();";

  @override
  String intoIos(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      "path.close();";

  @override
  intoPath(Path path) {
    path.close();
  }

  @override
  Offset get to => const Offset(0, 0);
}
