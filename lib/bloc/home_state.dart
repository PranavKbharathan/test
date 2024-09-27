part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String name,
  }) = _HomeState;

  factory HomeState.initial() {
    return const HomeState(name: "");
  }
}
