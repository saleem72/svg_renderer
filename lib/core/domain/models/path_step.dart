//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/string_extension.dart';

class PathStep {
  final String source;
  final String command;
  final List<double> points;
  PathStep({
    required this.source,
    required this.command,
    required this.points,
  });

  static List<double> _getOprands(String commnad) {
    return commnad
        .split(' ')
        .toList()
        .map((e) => e.toDouble())
        .toList()
        .whereType<double>()
        .toList();
  }

  factory PathStep.fromString(String step) {
    final cmd = step[0];
    final points = step.substring(1);
    final oprands = _getOprands(points);
    return PathStep(source: step, command: cmd, points: oprands);
  }
}


/*
  _command() {
    final cmd = path[0];
     switch (cmd) {
      case "m":
            case "M":
                final res = appendMoveTo(cmd: item.cmd.first!, path: path, operands: item.array, result: outcome)
                lines.append(contentsOf: res);
                break;
            case "L", "l", "H", "h", "V", "v":
                let res = appendLineTo(cmd: item.cmd.first!, path: path, operands: item.array, result: outcome)
                lines.append(contentsOf: res)
                break;
            case "C", "c":
                let res = appendCubicCurve(cmd: item.cmd.first!, path: path, operands: item.array, result: outcome)
                lines.append(contentsOf: res)
                break;
            case "S", "s":
                let res = appendShorthandCubicCurve(cmd: item.cmd.first!, path: path, operands: item.array, result: outcome)
                lines.append(contentsOf: res)
                break;
            case "Q", "q":
                let res = appendQuadraticCurve(cmd: item.cmd.first!, path: path, operands: item.array, result: outcome)
                lines.append(contentsOf: res)
                break;
            case "T", "t":
                let res = appendShorthandQuadraticCurve(cmd: item.cmd.first!, path: path, operands: item.array, result: outcome)
                lines.append(contentsOf: res)
                break;
            case "A", "a":
                let res = appendArc(cmd: item.cmd.first!, path: path, operands: item.array, result: outcome)
                lines.append(contentsOf: res)
                break;
            case "Z", "z":
                path.close()
                break;
                
            default:
                NSLog("*** Error: Cannot process command : \(item.cmd)");
                break;
            }
  }
  */