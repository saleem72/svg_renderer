//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:svg_renderer/configuration/extensions/build_context_extension.dart';
import 'package:svg_renderer/configuration/routing/app_pages.dart';
import 'package:svg_renderer/features/path_details/presentation/path_details_bloc/path_details_bloc.dart';

import '../../../../core/domain/models/svg_path.dart';
import 'command_view.dart';

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
          IconButton(
            onPressed: () => _calculatePath(context),
            icon: const Icon(Icons.calculate),
          ),
          const CopyPathButton(),
          const NavigateToDrawButton(),
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
                    flex: 1,
                    child: ListView.builder(
                      itemCount: path.steps.length,
                      itemBuilder: (BuildContext context, int index) {
                        final oprand = path.steps[index];
                        return GestureDetector(
                          onTap: _command,
                          child: CommandView(oprand: oprand),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  const Expanded(
                    flex: 1,
                    child: PathDetailsFlutterPath(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _command() {}

  _calculatePath(BuildContext context) {
    final apis = path.getPath();
    context.read<PathDetailsBloc>().add(PathDetailsEvent.update(apis: apis));
  }
}

class PathDetailsFlutterPath extends StatelessWidget {
  const PathDetailsFlutterPath({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PathDetailsBloc, PathDetailsState>(
      buildWhen: (previous, current) => previous.apis != current.apis,
      builder: (context, state) {
        return state.apis.isEmpty
            ? const Text('Press Calcualte to get instructions')
            : _buildList(state.apis);
      },
    );
  }

  Widget _buildList(List<String> apis) {
    // return ListView.builder(
    //   itemCount: apis.length,
    //   itemBuilder: (BuildContext context, int index) {
    //     return Text(apis[index]);
    //   },
    // );
    final result = apis.join("\n");

    return SelectableText(result);
  }
}

class CopyPathButton extends StatelessWidget {
  const CopyPathButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PathDetailsBloc, PathDetailsState>(
      buildWhen: (previous, current) => previous.apis != current.apis,
      builder: (context, state) {
        return state.apis.isEmpty
            ? const SizedBox.shrink()
            : _buildButton(context);
      },
    );
  }

  Widget _buildButton(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.copy),
    );
  }
}

class NavigateToDrawButton extends StatelessWidget {
  const NavigateToDrawButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PathDetailsBloc, PathDetailsState>(
      buildWhen: (previous, current) => previous.apis != current.apis,
      builder: (context, state) {
        return state.apis.isEmpty
            ? const SizedBox.shrink()
            : _buildButton(context);
      },
    );
  }

  Widget _buildButton(BuildContext context) {
    return IconButton(
      onPressed: () => context.navigator.pushNamed(AppPages.pathDraw),
      icon: const Icon(Icons.color_lens),
    );
  }
}
