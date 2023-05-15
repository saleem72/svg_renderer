//

extension StringToDouble on String {
  double? toDouble() {
    final result = double.tryParse(this);
    // if (startsWith('-')) {
    //   print(this);
    // }

    return result;
  }
}
