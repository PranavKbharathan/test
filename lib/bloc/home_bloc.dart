import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@singleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<_UpdateName>((event, emit) {
      emit(state.copyWith(name: event.name));
    });
  }

  @override
  Future<void> close() {
    log("Close");
    return super.close();
  }
}
