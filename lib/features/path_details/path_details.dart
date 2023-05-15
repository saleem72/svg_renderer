//

import 'package:flutter/material.dart';

import '../../core/domain/models/svg_path.dart';
import 'presentation/widgets/path_details_content.dart';

class PathDetails extends StatelessWidget {
  const PathDetails({
    super.key,
    required this.path,
  });
  final SVGPath path;
  @override
  Widget build(BuildContext context) {
    return PathDetailsContent(path: path);
  }
}
