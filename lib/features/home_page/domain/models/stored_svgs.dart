//

import 'package:flutter/material.dart';

import '../../../../svg_provider/svg_provider.dart';

enum StoredSVGs {
  logo,
  tiger,
  rose,
  kid;

  String get svg {
    switch (this) {
      case StoredSVGs.logo:
        return logoString;
      case StoredSVGs.tiger:
        return tigerString;
      case StoredSVGs.rose:
        // return singlePath;
        return blueRoseString;
      case StoredSVGs.kid:
        return kidString;
    }
  }

  String get prefix {
    return toString().split('.').last[0].toUpperCase();
  }

  Color get color {
    switch (this) {
      case StoredSVGs.logo:
        return Colors.green;
      case StoredSVGs.tiger:
        return Colors.orange;
      case StoredSVGs.rose:
        return Colors.blue;
      case StoredSVGs.kid:
        return Colors.purple;
    }
  }
}
