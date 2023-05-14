//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:svg_renderer/configuration/constants/app_constants.dart';
import 'package:svg_renderer/configuration/extensions/build_context_extension.dart';

import 'presentation/home_bloc/home_bloc.dart';
import 'presentation/widgets/invalid_svg_error_view.dart';
import 'presentation/widgets/svg_path_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const _HomePageState(),
    );
  }
}

class _HomePageState extends StatelessWidget {
  const _HomePageState(
      // {super.key,}
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SVG Renderer'),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) {
          return previous.object != current.object;
        },
        builder: (context, state) {
          return Stack(
            children: [
              _contents(context, state),
              const InvalidSVGErrorView(),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _contents(BuildContext context, HomeState state) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 8, top: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: AppConstants.borderRadius,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      maxLines: null,
                      expands: true,
                      style: context.textTheme.bodyMedium,
                      // keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText:
                              'Paste your svg code in here or you can type it',
                          hintStyle: context.textTheme.bodySmall?.copyWith(
                            color: Colors.grey,
                            fontSize: 10,
                          )),
                      onChanged: (value) => context.read<HomeBloc>().add(
                            HomeEvent.xmlHasChanged(
                              xml: value,
                            ),
                          ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: DecodeXMLButton(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const VerticalDivider(),
        Expanded(
          flex: 2,
          child: state.object == null
              ? const SizedBox.shrink()
              : SVGPathaList(paths: state.object!.paths),
        )
      ],
    );
  }
}

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
