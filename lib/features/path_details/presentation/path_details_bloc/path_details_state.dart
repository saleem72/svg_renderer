// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'path_details_bloc.dart';

class PathDetailsState extends Equatable {
  const PathDetailsState._({
    required this.apis,
  });
  final List<String> apis;

  factory PathDetailsState.initial() => const PathDetailsState._(apis: []);

  @override
  List<Object> get props => [apis];

  PathDetailsState copyWith({
    List<String>? apis,
  }) {
    return PathDetailsState._(
      apis: apis ?? this.apis,
    );
  }
}
