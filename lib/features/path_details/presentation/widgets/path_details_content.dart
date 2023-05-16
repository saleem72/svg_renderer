//

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:svg_renderer/configuration/constants/app_constants.dart';
import 'package:svg_renderer/configuration/extensions/build_context_extension.dart';

import '../../../../core/domain/models/svg_path.dart';
import '../../../../core/widgets/path_details_flutter_path.dart';

class PathDetailsContent extends StatelessWidget {
  const PathDetailsContent({
    super.key,
    required this.path,
  });
  final SVGPath path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(path.id),
        actions: [
          // IconButton(
          //   onPressed: () => _calculatePath(context),
          //   icon: const Icon(Icons.calculate),
          // ),
          IconButton(
            onPressed: () => _showCopyChoices(context),
            icon: const Icon(Icons.copy),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Wrap(
              spacing: 4,
              children: [
                const Text('Width:'),
                Text(path.totalWidth.toString()),
                const Text('Height:'),
                Text(path.totalHeight.toString()),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              path.path,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: path.steps.length,
                      itemBuilder: (BuildContext context, int index) {
                        final step = path.steps[index];
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(step.source),
                              Wrap(spacing: 8, runSpacing: 8, children: [
                                Text(step.command),
                                ...step.points.map((e) => Text(e.toString())),
                              ]),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: PathDetailsFlutterPath(
                      path: path,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  copyFlutter() async {
    final apis = path.getFlutterCommands();
    final string = apis.join('\n');
    await Clipboard.setData(ClipboardData(text: string));
  }

  copyIOS() async {
    final apis = path.getIOSCommands();
    final string = apis.join('\n');
    await Clipboard.setData(ClipboardData(text: string));
  }

  _showCopyChoices(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: AppConstants.borderRadius),
          title: Text(
            'Copy to clipboard',
            style: context.textTheme.titleMedium?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          content: Text(
            'Which system',
            style: context.textTheme.titleSmall?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.normal,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                copyIOS();
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
                foregroundColor: context.colorScheme.onPrimary,
              ),
              child: const Text('IOS'),
            ),
            TextButton(
              onPressed: () {
                copyFlutter();
                Navigator.of(context).pop();
              },
              style: TextButton.styleFrom(
                backgroundColor: context.colorScheme.primary,
                foregroundColor: context.colorScheme.onPrimary,
              ),
              child: const Text('Flutter'),
            ),
          ],
        );
      },
    );
  }
}
