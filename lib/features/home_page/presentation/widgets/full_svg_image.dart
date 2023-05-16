//

import 'package:flutter/material.dart';

import '../../../../core/domain/models/svg_path.dart';
import '../../../../core/widgets/path_details_flutter_path.dart';

class FullSVGImage extends StatelessWidget {
  const FullSVGImage({
    super.key,
    required this.paths,
  });
  final List<SVGPath> paths;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ...paths.map((e) => PathDetailsFlutterPath(path: e)),
      ],
    );
  }
}
