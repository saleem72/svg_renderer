//

import 'package:svg_renderer/core/domain/models/path_command.dart';
import 'package:svg_renderer/core/domain/usecases/svg_commands_extractor.dart';
import 'package:xml/xml.dart';

import '../usecases/height_ratio_string.dart';
import '../usecases/width_ratio_string.dart';
import 'path_step.dart';

class SVGPath {
  final String id;
  final String path;
  final List<PathStep> steps;
  final double totalWidth;
  final double totalHeight;
  final List<PathCommand> commands;
  SVGPath._({
    required this.id,
    required this.path,
    required this.steps,
    required this.totalWidth,
    required this.totalHeight,
    required this.commands,
  });

  factory SVGPath.fromXml({
    required XmlElement xmlElement,
    required double width,
    required double height,
  }) {
    RegExp opransReg = RegExp(r"[CcMmLlHhVvZzQqTtAaSsZz][0-9,-\.\s]*");
    String commands = xmlElement.getAttribute('d') ?? '';
    final matchs = opransReg.allMatches(commands).toList();
    final steps =
        matchs.map((e) => e.group(0)).toList().whereType<String>().toList();

    final oprands = steps.map((e) => PathStep.fromString(e)).toList();
    final SVGCommandsExtractor extractor =
        SVGCommandsExtractor(totalWidth: width, totalHeight: height);
    final pathCommands = extractor.getPath(oprands);
    return SVGPath._(
      id: xmlElement.getAttribute('id') ?? 'no ID',
      path: commands,
      steps: oprands,
      totalHeight: height,
      totalWidth: width,
      commands: pathCommands,
    );
  }

  List<String> getFlutterCommands() {
    final List<String> lines = [];

    final WidthRatioString widthRatioString =
        WidthRatioString(totalWidth: totalWidth);
    final HeightRatioString heightRatioString =
        HeightRatioString(totalHeight: totalHeight);

    lines.add("Path myPath(Size size) {");
    lines.add("var path = Path();");
    lines.add("final width = size.width;");
    lines.add("final height = size.height;");

    for (final command in commands) {
      lines.add(command.intoFlutter(widthRatioString, heightRatioString));
    }
    lines.add("return path;");
    lines.add("}");
    return lines;
  }

  List<String> getIOSCommands() {
    final List<String> lines = [];

    final WidthRatioString widthRatioString =
        WidthRatioString(totalWidth: totalWidth);
    final HeightRatioString heightRatioString =
        HeightRatioString(totalHeight: totalHeight);

    lines.add("struct MyShape: Shape {");
    lines.add("func path(in rect: CGRect) -> Path {");
    lines.add("var path = Path()");
    lines.add("let width = rect.size.width");
    lines.add("let height = rect.size.height");

    for (final command in commands) {
      lines.add(command.intoIos(widthRatioString, heightRatioString));
    }
    lines.add("return path");
    lines.add("}");
    lines.add("}");
    return lines;
  }
}
