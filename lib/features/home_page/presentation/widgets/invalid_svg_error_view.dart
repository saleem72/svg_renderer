//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:svg_renderer/configuration/constants/app_constants.dart';
import 'package:svg_renderer/configuration/extensions/build_context_extension.dart';

import '../home_bloc/home_bloc.dart';

class InvalidSVGErrorView extends StatelessWidget {
  const InvalidSVGErrorView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) {
        return previous.hasError != current.hasError;
      },
      builder: (context, state) {
        return state.hasError ? _content(context) : const SizedBox.shrink();
      },
    );
  }

  Center _content(BuildContext context) {
    return Center(
      child: Material(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: AppConstants.borderRadius),
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            color: context.colorScheme.errorContainer.withOpacity(0.5),
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
              Text(
                'Invalid svg pattern',
                style: context.textTheme.titleSmall?.copyWith(
                  color: context.colorScheme.onError.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () =>
                        context.read<HomeBloc>().add(HomeEvent.clearError()),
                    style: TextButton.styleFrom(
                      backgroundColor:
                          context.colorScheme.errorContainer.withOpacity(0.5),
                      foregroundColor: context.colorScheme.onErrorContainer,
                    ),
                    child: const Text(
                      'Ok',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
