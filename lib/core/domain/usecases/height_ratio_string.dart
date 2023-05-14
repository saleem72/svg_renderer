//

import 'package:svg_renderer/configuration/extensions/double_extension.dart';

class HeightRatioString {
  final double totalHeight;

  HeightRatioString({
    required this.totalHeight,
  });

  String call(double val) {
    if (val == 0) {
      return "0";
    } else {
      final ratio = val / totalHeight;
      return "${ratio.roundTo()}*height"; // .round()
    }
  }
}
