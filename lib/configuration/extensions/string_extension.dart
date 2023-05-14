//

extension StringToDouble on String {
  double? toDouble() {
    // final oprands = [CcMmLlHhVvZzQqTtAaSsZz];
    return double.tryParse(this);
  }
}
