//

import 'dart:ui';

import 'package:svg_renderer/configuration/extensions/path_extension.dart';
import 'package:svg_renderer/core/domain/models/svg_path.dart';

Path myNewPath(Size size) {
  var path = Path();
  final width = size.width;
  final height = size.height;
  path.move(to: Offset(0.95 * width, 0));
  path.addCurve(
    to: Offset(1.0 * width, 0.26667 * height),
    controlPoint1: Offset(0.97762 * width, 0),
    controlPoint2: Offset(1.0 * width, 0.11939 * height),
  );
  // path.addRelativeLineTo(
  //     to: Offset(0, 0.73333 * height));
  path.addLine(to: Offset(1.0 * width, 0.73333 * height));
  path.addCurve(
    to: Offset(0.95 * width, 1.0 * height),
    controlPoint1: Offset(1.0 * width, 0.88061 * height),
    controlPoint2: Offset(0.97762 * width, 1.0 * height),
  );
  // path.addRelativeLineTo(
  //     to: Offset(0.02813 * width, 0)); // appendLineToSinglePoint 2
  // path.addRelativeLineTo(
  //     to: Offset(0.0015 * width, 0)); // appendLineToSinglePoint 2
  path.addLine(to: Offset(0.02813 * width, 1.0 * height));
  path.addLine(to: Offset(0.0015 * width, 1.0 * height));
  path.addCurve(
    to: Offset(0, 0.99199 * height),
    controlPoint1: Offset(0.00067 * width, 1.0 * height),
    controlPoint2: Offset(0, 0.99642 * height),
  );
  path.addCurve(
    to: Offset(0.00096 * width, 0.98445 * height),
    controlPoint1: Offset(0, 0.98868 * height),
    controlPoint2: Offset(0.00038 * width, 0.98573 * height),
  );
  path.addCurve(
    to: Offset(0.02813 * width, 0.75 * height),
    controlPoint1: Offset(0.01682 * width, 0.94912 * height),
    controlPoint2: Offset(0.02813 * width, 0.85748 * height),
  );
  // path.addRelativeLineTo(
  //     to: Offset(0, 0.26667 * height)); // appendLineToSinglePoint
  path.addLine(to: Offset(0.02813 * width, 0.26667 * height));
  path.addCurve(
    to: Offset(0.07813 * width, 0),
    controlPoint1: Offset(0.02813 * width, 0.11939 * height),
    controlPoint2: Offset(0.05051 * width, 0),
  );
  // path.addRelativeLineTo(
  // to: Offset(0.95 * width, 0)); // appendLineToSinglePoint 2
  path.addLine(to: Offset(0.95 * width, 0));
  path.close();
  return path;
}

Path myPath(Size size) {
  var path = Path();
  final width = size.width;
  final height = size.height;
  path.move(to: Offset(0.95 * width, 0));
  path.addCurve(
    to: Offset(1.0 * width, 0.26667 * height),
    controlPoint1: Offset(0.97762 * width, 0),
    controlPoint2: Offset(1.0 * width, 0.11939 * height),
  );
  path.addRelativeLineTo(
      to: Offset(0, 0.73333 * height)); // appendLineToSinglePoint
  path.addCurve(
    to: Offset(0.95 * width, 1.0 * height),
    controlPoint1: Offset(1.0 * width, 0.88061 * height),
    controlPoint2: Offset(0.97762 * width, 1.0 * height),
  );
  path.addRelativeLineTo(
      to: Offset(0.02813 * width, 0)); // appendLineToSinglePoint 2
  path.addRelativeLineTo(
      to: Offset(0.0015 * width, 0)); // appendLineToSinglePoint 2
  path.addCurve(
    to: Offset(0, 0.99199 * height),
    controlPoint1: Offset(0.00067 * width, 1.0 * height),
    controlPoint2: Offset(0, 0.99642 * height),
  );
  path.addCurve(
    to: Offset(0.00096 * width, 0.98445 * height),
    controlPoint1: Offset(0, 0.98868 * height),
    controlPoint2: Offset(0.00038 * width, 0.98573 * height),
  );
  path.addCurve(
    to: Offset(0.02813 * width, 0.75 * height),
    controlPoint1: Offset(0.01682 * width, 0.94912 * height),
    controlPoint2: Offset(0.02813 * width, 0.85748 * height),
  );
  path.addRelativeLineTo(
      to: Offset(0, 0.26667 * height)); // appendLineToSinglePoint
  path.addCurve(
    to: Offset(0.07813 * width, 0),
    controlPoint1: Offset(0.02813 * width, 0.11939 * height),
    controlPoint2: Offset(0.05051 * width, 0),
  );
  path.addRelativeLineTo(
      to: Offset(0.95 * width, 0)); // appendLineToSinglePoint 2
  path.close();
  return path;
}

Path leftPath(Size size) {
  var path = Path();
  final width = size.width;
  final height = size.height;

  /*

  path.move(to: Offset(0.95 * width, 0));
  path.addCurve(
    to: Offset(1.0 * width, 0.26667 * height),
    controlPoint1: Offset(0.97762 * width, 0),
    controlPoint2: Offset(1.0 * width, 0.11939 * height),
  );
  */
  path.moveTo(0.95 * width, 0);
  path.addCurve(
    to: Offset(1.0 * width, 0.26667 * height),
    controlPoint1: Offset(0.97762 * width, 0),
    controlPoint2: Offset(1.0 * width, 0.11939 * height),
  );

  /*
  path.addRelativeLineTo(
      to: Offset(0, 0.73333 * height));
  */
  path.addLine(to: Offset(1.0 * width, 0.73333 * height));

  /*
  path.addCurve(
    to: Offset(0.95 * width, 1.0 * height),
    controlPoint1: Offset(1.0 * width, 0.88061 * height),
    controlPoint2: Offset(0.97762 * width, 1.0 * height),
  );
  */
  path.addCurve(
    to: Offset(0.95 * width, 1.0 * height),
    controlPoint1: Offset(1.0 * width, 0.88061 * height),
    controlPoint2: Offset(0.97762 * width, 1.0 * height),
  );
  path.addLine(to: Offset(0.02813 * width, 1.0 * height));
  path.addLine(to: Offset(0.0015 * width, 1.0 * height));
  /*
  path.addCurve(
    to: Offset(0, 0.99199 * height),
    controlPoint1: Offset(0.00067 * width, 1.0 * height),
    controlPoint2: Offset(0, 0.99642 * height),
  );
  */
  path.addCurve(
    to: Offset(0, 0.99199 * height),
    controlPoint1: Offset(0.00067 * width, 1.0 * height),
    controlPoint2: Offset(0, 0.99642 * height),
  );
  /**
   path.addCurve(
    to: Offset(0.00096 * width, 0.98445 * height),
    controlPoint1: Offset(0, 0.98868 * height),
    controlPoint2: Offset(0.00038 * width, 0.98573 * height),
  );
   */
  path.addCurve(
    to: Offset(0.00096 * width, 0.98445 * height),
    controlPoint1: Offset(0, 0.98868 * height),
    controlPoint2: Offset(0.00038 * width, 0.98573 * height),
  );
  /**
   path.addCurve(
    to: Offset(0.02813 * width, 0.75 * height),
    controlPoint1: Offset(0.01682 * width, 0.94912 * height),
    controlPoint2: Offset(0.02813 * width, 0.85748 * height),
  );
   */
  path.addCurve(
    to: Offset(0.02813 * width, 0.75 * height),
    controlPoint1: Offset(0.01682 * width, 0.94912 * height),
    controlPoint2: Offset(0.02813 * width, 0.85748 * height),
  );
  path.addLine(to: Offset(0.02813 * width, 0.26667 * height));
  /**
    path.addCurve(
    to: Offset(0.07813 * width, 0),
    controlPoint1: Offset(0.02813 * width, 0.11939 * height),
    controlPoint2: Offset(0.05051 * width, 0),
  );
   */
  path.addCurve(
    to: Offset(0.07813 * width, 0),
    controlPoint1: Offset(0.02813 * width, 0.11939 * height),
    controlPoint2: Offset(0.05051 * width, 0),
  );
  path.addLine(to: Offset(0.95 * width, 0));
  path.close();
  return path;
}
