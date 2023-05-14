//

import 'package:flutter/material.dart';

import '../../../../core/domain/models/svg_path.dart';
import 'svg_path_tile.dart';

class SVGPathaList extends StatelessWidget {
  const SVGPathaList({
    super.key,
    required this.paths,
  });

  final List<SVGPath> paths;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: paths.length,
      itemBuilder: (BuildContext context, int index) {
        final path = paths[index];
        return SVGPathTile(path: path);
      },
    );
  }
}
