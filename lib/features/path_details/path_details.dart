//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/domain/models/svg_path.dart';
import 'presentation/path_details_bloc/path_details_bloc.dart';
import 'presentation/widgets/path_details_content.dart';

class PathDetails extends StatelessWidget {
  const PathDetails({
    super.key,
    required this.path,
  });
  final SVGPath path;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PathDetailsBloc(),
      child: PathDetailsContent(path: path),
    );
  }
}
