//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:svg_renderer/configuration/constants/app_constants.dart';
import 'package:svg_renderer/configuration/extensions/build_context_extension.dart';
import 'package:svg_renderer/configuration/routing/app_pages.dart';
import 'package:svg_renderer/svg_provider/svg_provider.dart';

import 'domain/models/stored_svgs.dart';
import 'presentation/home_bloc/home_bloc.dart';
import 'presentation/widgets/home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const HomePageContent(),
    );
  }
}

class HomePageContent extends StatefulWidget {
  const HomePageContent({
    super.key,
  });

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  final TextEditingController _controller = TextEditingController();
  double _currentScaleValue = 1;
  double _currentOffsetValue = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SVG Renderer'),
        actions: [
          IconButton(
            onPressed: () => context.navigator.pushNamed(AppPages.drawing),
            icon: const Icon(Icons.color_lens),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                setState(() {
                  _controller.text = '';
                  _currentOffsetValue = 0;
                  _currentScaleValue = 1;
                });
                context.read<HomeBloc>().add(HomeEvent.clearPaths());
              },
              icon: const Icon(Icons.close),
            ),
          ),
        ],
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
                SizedBox(
                  height: 56,
                  child: Row(
                    children: [
                      ...StoredSVGs.values.map(
                        (e) => StoredSVGButton(
                          onPressed: () {
                            setState(() {
                              _controller.text = e.svg;
                            });
                            context
                                .read<HomeBloc>()
                                .add(HomeEvent.xmlHasChanged(
                                  xml: e.svg,
                                ));
                          },
                          item: e,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 8, top: 8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: AppConstants.borderRadius,
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _controller,
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
                  children: const [
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
              ? Container()
              : Column(
                  children: [
                    SizedBox(
                      height: 64,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Slider(
                                  value: _currentScaleValue,
                                  max: 2,
                                  divisions: 10,
                                  label: 'Scale',
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentScaleValue = value;
                                    });
                                  },
                                ),
                                Text(
                                    'Scale: ${_currentScaleValue.toInt().toString()}')
                              ],
                            ),
                          ),
                          const SizedBox(width: 32),
                          Expanded(
                            child: Column(
                              children: [
                                Slider(
                                  value: _currentOffsetValue,
                                  max: 300,
                                  min: -300,
                                  divisions: 20,
                                  label: 'Offset',
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentOffsetValue = value;
                                    });
                                  },
                                ),
                                Text(
                                    'Offset: ${_currentOffsetValue.toInt().toString()}')
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SVGPathaList(paths: state.object!.paths),
                          ),
                          Expanded(
                              flex: 3,
                              child: Transform.translate(
                                offset: Offset(
                                    _currentOffsetValue, _currentOffsetValue),
                                child: Transform.scale(
                                  scale: _currentScaleValue,
                                  child:
                                      FullSVGImage(paths: state.object!.paths),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
        )
      ],
    );
  }
}
