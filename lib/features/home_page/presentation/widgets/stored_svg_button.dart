//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/build_context_extension.dart';

import '../../../../svg_provider/svg_provider.dart';

class StoredSVGButton extends StatelessWidget {
  const StoredSVGButton({
    super.key,
    required this.item,
    required this.onPressed,
  });
  final StoredSVGs item;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          margin: const EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            color: item.color,
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Text(
            item.prefix,
            style: context.textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
