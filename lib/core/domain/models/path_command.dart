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
  final Offset to;

  _MoveTo({
    required this.to,
  });

  @override
  String intoFlutter(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      "path.moveTo(${widthRatioString(to.dx)}, ${heightRatioString(to.dy)});";

  @override
  String intoIos(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      // path.move(to: CGPoint(x: 0.95*width, y: 0))
      "path.move(to: CGPoint(x: ${widthRatioString(to.dx)}, y: ${heightRatioString(to.dy)}));";

  @override
  intoPath(Path path) {
    path.moveTo(to.dx, to.dy);
  }
}

class _LineTo extends PathCommand {
  @override
  final Offset to;

  _LineTo({
    required this.to,
  });

  @override
  String intoFlutter(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      "path.lineTo(${widthRatioString(to.dx)}, ${heightRatioString(to.dy)});";

  @override
  String intoIos(WidthRatioString widthRatioString,
          HeightRatioString heightRatioString) =>
      // path.addLine(to: CGPoint(x: 1.0*width, y: 0.73333*height))
      "path.addLine(to: CGPoint(x: ${widthRatioString(to.dx)}, y: ${heightRatioString(to.dy)}));";

  @override
  intoPath(Path path) {
    path.lineTo(to.dx, to.dy);
  }
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

      // path.addCurve(to: CGPoint(x: 1.0*width, y: 0.26667*height), control1: CGPoint(x: 0.97762*width, y: 0), control2: CGPoint(x: 1.0*width, y: 0.11939*height))
      """path.addCurve(
    to: CGPoint(x: ${widthRatioString(to.dx)}, y: ${heightRatioString(to.dy)}), 
    control1: CGPoint(x: ${widthRatioString(controlPoint1.dx)},y: ${heightRatioString(controlPoint1.dy)}), 
    control2: CGPoint(x: ${widthRatioString(controlPoint2.dx)}, y: ${heightRatioString(controlPoint2.dy)})
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
      //"path.addQuadCurve(
      //to: CGPoint(x: \(widthRatioString(x)), y: \(heightRatioString(y))),
      //control: CGPoint(x: \(widthRatioString(x1)), y: \(heightRatioString(y1))))"
      """path.addQuadCurve(
    to: CGPoint(x: ${widthRatioString(to.dx)}, y: ${heightRatioString(to.dy)}), 
    control: CGPoint(x: ${widthRatioString(controlPoint.dx)}, y: ${heightRatioString(controlPoint.dy)})
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
      "path.closeSubpath();";

  @override
  intoPath(Path path) {
    path.close();
  }

  @override
  Offset get to => const Offset(0, 0);
}

/*
struct : Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		let width = rect.size.width
		let height = rect.size.height
		path.move(to: CGPoint(x: 0.95*width, y: 0))
		path.addCurve(to: CGPoint(x: 1.0*width, y: 0.26667*height), control1: CGPoint(x: 0.97762*width, y: 0), control2: CGPoint(x: 1.0*width, y: 0.11939*height))
		path.addLine(to: CGPoint(x: 1.0*width, y: 0.73333*height))
		path.addCurve(to: CGPoint(x: 0.95*width, y: 1.0*height), control1: CGPoint(x: 1.0*width, y: 0.88061*height), control2: CGPoint(x: 0.97762*width, y: 1.0*height))
		path.addLine(to: CGPoint(x: 0.02813*width, y: 1.0*height))
		path.addLine(to: CGPoint(x: 0.0015*width, y: 1.0*height))
		path.addCurve(to: CGPoint(x: 0, y: 0.99199*height), control1: CGPoint(x: 0.00067*width, y: 1.0*height), control2: CGPoint(x: 0, y: 0.99642*height))
		path.addCurve(to: CGPoint(x: 0.00096*width, y: 0.98445*height), control1: CGPoint(x: 0, y: 0.98868*height), control2: CGPoint(x: 0.00038*width, y: 0.98573*height))
		path.addCurve(to: CGPoint(x: 0.02813*width, y: 0.75*height), control1: CGPoint(x: 0.01682*width, y: 0.94912*height), control2: CGPoint(x: 0.02813*width, y: 0.85748*height))
		path.addLine(to: CGPoint(x: 0.02813*width, y: 0.26667*height))
		path.addCurve(to: CGPoint(x: 0.07813*width, y: 0), control1: CGPoint(x: 0.02813*width, y: 0.11939*height), control2: CGPoint(x: 0.05051*width, y: 0))
		path.addLine(to: CGPoint(x: 0.95*width, y: 0))
		path.closeSubpath()
		return path
	}
}
*/
