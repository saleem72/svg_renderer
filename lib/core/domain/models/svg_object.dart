//

import 'package:svg_renderer/configuration/extensions/string_extension.dart';
import 'package:xml/xml.dart';

import '../errors/invalid_svg.dart';
import 'svg_path.dart';

class SVGObject {
  final double width;
  final double height;
  final List<SVGPath> paths;

  SVGObject._({
    required this.width,
    required this.height,
    this.paths = const [],
  });

  factory SVGObject.fromString(String xml) {
    final document = XmlDocument.parse(xml);
    final svg = document.getElement('svg');
    if (svg == null) {
      throw InvalidSVG();
    }
    final viewBox = svg.getAttribute('viewBox');
    final width = svg.getAttribute('width');
    final height = svg.getAttribute('height');

    final temp =
        _defineDimintions(viewBox: viewBox, width: width, height: height);

    final xmlPaths = document.findAllElements('path').toList();

    final paths = xmlPaths
        .map((e) => SVGPath.fromXml(
            xmlElement: e, width: temp.width, height: temp.height))
        .toList();
    return temp.copyWith(paths: paths);
  }

  static SVGObject _defineDimintions({
    required String? viewBox,
    required String? width,
    required String? height,
  }) {
    final diminsionsObject =
        _objectFromWidthAndHeight(width: width, height: height);
    if (diminsionsObject != null) {
      return diminsionsObject;
    }

    final viewBoxObject = _objectFromViewBox(viewBox: viewBox);
    if (viewBoxObject != null) {
      return viewBoxObject;
    }

    throw InvalidSVG();
  }

  static SVGObject? _objectFromWidthAndHeight({
    required String? width,
    required String? height,
  }) {
    if (width != null && height != null) {
      final doubleWidth = width.toDouble();
      final doubleHeight = height.toDouble();
      if (doubleWidth != null && doubleHeight != null) {
        return SVGObject._(width: doubleWidth, height: doubleHeight);
      }
    }
    return null;
  }

  static SVGObject? _objectFromViewBox({required String? viewBox}) {
    if (viewBox != null) {
      final diminsions = viewBox.split(' ');
      if (diminsions.length == 4) {
        final viewBoxWidth = diminsions[2];
        final viewBoxHeight = diminsions[3];
        final object = _objectFromWidthAndHeight(
            width: viewBoxWidth, height: viewBoxHeight);
        if (object != null) {
          return object;
        }
      }
    }
    return null;
  }

  SVGObject copyWith({
    double? width,
    double? height,
    List<SVGPath>? paths,
  }) {
    return SVGObject._(
      width: width ?? this.width,
      height: height ?? this.height,
      paths: paths ?? this.paths,
    );
  }
}
