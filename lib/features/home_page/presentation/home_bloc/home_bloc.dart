//

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:xml/xml.dart';

import '../../../../core/domain/errors/invalid_svg.dart';
import '../../../../core/domain/models/svg_object.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_XMLHasChanged>(_onXMLHasChanged);
    on<_DecodeXML>(_onDecodeXML);
    on<_ClearError>(_onClearError);
  }

  _onClearError(_ClearError event, Emitter<HomeState> emit) {
    emit(state.copyWith(object: null, hasError: false));
  }

  _onDecodeXML(_DecodeXML event, Emitter<HomeState> emit) {
    try {
      final object = SVGObject.fromString(state.xml);
      emit(
        state.copyWith(
          object: object,
        ),
      );
    } on InvalidSVG {
      emit(
        state.copyWith(
          object: null,
          hasError: true,
        ),
      );
    } on XmlParserException {
      emit(
        state.copyWith(
          object: null,
          hasError: true,
        ),
      );
    }
  }

  _onXMLHasChanged(_XMLHasChanged event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        xml: event.xml,
        object: state.object,
      ),
    );
  }
}
