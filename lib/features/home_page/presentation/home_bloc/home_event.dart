// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  factory HomeEvent.xmlHasChanged({required String xml}) =>
      _XMLHasChanged(xml: xml);

  factory HomeEvent.decodeXml() => _DecodeXML();

  factory HomeEvent.clearError() => _ClearError();

  factory HomeEvent.clearPaths() => _ClearPaths();

  @override
  List<Object> get props => [];
}

class _XMLHasChanged extends HomeEvent {
  final String xml;
  const _XMLHasChanged({
    required this.xml,
  });

  @override
  List<Object> get props => [xml];
}

class _DecodeXML extends HomeEvent {}

class _ClearError extends HomeEvent {}

class _ClearPaths extends HomeEvent {}
