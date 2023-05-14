//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/build_context_extension.dart';
import 'package:svg_renderer/configuration/routing/app_pages.dart';

import '../../../../core/domain/models/svg_path.dart';

class SVGPathTile extends StatelessWidget {
  const SVGPathTile({
    super.key,
    required this.path,
  });

  final SVGPath path;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () =>
          context.navigator.pushNamed(AppPages.pathDetails, arguments: path),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(path.id),
            ),
          ],
        ),
      ),
    );
  }
}
