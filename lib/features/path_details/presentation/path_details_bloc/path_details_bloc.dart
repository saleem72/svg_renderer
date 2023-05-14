//

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'path_details_event.dart';
part 'path_details_state.dart';

class PathDetailsBloc extends Bloc<PathDetailsEvent, PathDetailsState> {
  PathDetailsBloc() : super(PathDetailsState.initial()) {
    on<_UpdateApis>(_onUpdateApis);
  }

  _onUpdateApis(_UpdateApis event, Emitter<PathDetailsState> emit) {
    emit(state.copyWith(apis: event.apis));
  }
}
