//

import 'package:flutter/material.dart';

import '../../../../configuration/constants/app_constants.dart';
import '../../../../core/domain/models/path_step.dart';

class CommandView extends StatelessWidget {
  const CommandView({
    super.key,
    required this.oprand,
  });

  final PathStep oprand;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppConstants.borderRadius,
        border: Border.all(),
      ),
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(oprand.source),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Text(oprand.command),
              ...oprand.points.map((e) => Text(e.toString())),
            ],
          ),
        ],
      ),
    );
  }
}
