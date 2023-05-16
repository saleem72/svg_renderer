//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:svg_renderer/configuration/extensions/build_context_extension.dart';

import '../home_bloc/home_bloc.dart';

class DecodeXMLButton extends StatelessWidget {
  const DecodeXMLButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.xml.isEmpty != current.xml.isEmpty,
      builder: (context, state) {
        return TextButton(
          onPressed: state.xml.isNotEmpty ? () => _decode(context) : null,
          style: TextButton.styleFrom(
            foregroundColor: context.colorScheme.onPrimary,
            backgroundColor: state.xml.isNotEmpty
                ? context.colorScheme.primary
                : context.colorScheme.primary.withOpacity(0.6),
          ),
          child: const Text(
            'Decode',
          ),
        );
      },
    );
  }

  _decode(BuildContext context) {
    context.read<HomeBloc>().add(HomeEvent.decodeXml());
  }
}
