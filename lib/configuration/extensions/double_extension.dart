//

import 'dart:math' as math;

extension DoubleRound on double {
  double roundTo({int places = 5}) {
    final divisor = math.pow(10.0, places);
    final result = (this * divisor).round() / divisor;
    return result;
  }
}
