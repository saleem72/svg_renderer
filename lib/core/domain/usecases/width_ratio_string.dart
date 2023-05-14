// ignore_for_file: public_member_api_docs, sort_constructors_first
//

import 'package:svg_renderer/configuration/extensions/double_extension.dart';

class WidthRatioString {
  final double totalWidth;

  WidthRatioString({
    required this.totalWidth,
  });

  String call(double val) {
    if (val == 0) {
      return "0";
    } else {
      final ratio = val / totalWidth;
      return "${ratio.roundTo()}*width"; // .round()
    }
  }
}
