//

import 'package:flutter/material.dart';
import 'package:svg_renderer/configuration/extensions/build_context_extension.dart';

import '../constants/app_constants.dart';

class RoutingErrorPage extends StatelessWidget {
  const RoutingErrorPage({
    super.key,
    this.route,
    this.error,
  });
  final String? route;
  final String? error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Error'),
      ),
      body: Center(
        child: Material(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: AppConstants.borderRadius),
          child: Container(
            width: 300,
            decoration: BoxDecoration(
              color: context.colorScheme.error,
              borderRadius: AppConstants.borderRadius,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Error',
                      style: context.textTheme.titleMedium?.copyWith(
                        color: context.colorScheme.onError,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                if (route != null)
                  Text(
                    '${route!.substring(1)}: is not valid route',
                    style: context.textTheme.titleSmall?.copyWith(
                      color: context.colorScheme.onError.withOpacity(0.8),
                    ),
                  ),
                if (error != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Or',
                            style: context.textTheme.titleSmall?.copyWith(
                              color:
                                  context.colorScheme.onError.withOpacity(0.8),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        error!,
                        style: context.textTheme.titleSmall?.copyWith(
                          color: context.colorScheme.onError.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
