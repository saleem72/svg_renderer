part of 'path_details_bloc.dart';

abstract class PathDetailsEvent extends Equatable {
  const PathDetailsEvent();

  @override
  List<Object> get props => [];

  factory PathDetailsEvent.update({required List<String> apis}) =>
      _UpdateApis(apis: apis);
}

class _UpdateApis extends PathDetailsEvent {
  final List<String> apis;

  const _UpdateApis({required this.apis});

  @override
  List<Object> get props => [apis];
}
