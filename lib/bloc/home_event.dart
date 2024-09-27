part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
const factory HomeEvent.updateName(String name) = _UpdateName;

}