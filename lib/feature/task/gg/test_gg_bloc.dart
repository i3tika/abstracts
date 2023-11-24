import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'test_gg_event.dart';
part 'test_gg_state.dart';

class TestGgBloc extends Bloc<TestGgEvent, TestGgState> {
  TestGgBloc() : super(TestGgInitial()) {
    on<TestGgEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
