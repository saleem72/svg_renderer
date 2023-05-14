// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState._({
    required this.xml,
    required this.object,
    required this.hasError,
  });

  final String xml;
  final SVGObject? object;
  final bool hasError;

  @override
  List<Object?> get props => [xml, object, hasError];

  factory HomeState.initial() =>
      const HomeState._(xml: '', object: null, hasError: false);

  HomeState copyWith({
    String? xml,
    required SVGObject? object,
    bool? hasError,
  }) {
    return HomeState._(
      xml: xml ?? this.xml,
      object: object,
      hasError: hasError ?? this.hasError,
    );
  }
}
