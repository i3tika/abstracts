import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_supa_event.dart';
part 'auth_supa_state.dart';

class AuthSupaBloc extends Bloc<AuthSupaEvent, AuthSupaState> {
  AuthSupaBloc() : super(AuthSupaInitial()) {
    on<AuthSupaBaseEvent>((event, emit) async {
      try {
        emit(AuthSupaLoading());
        //
        emit(AuthSupaSuccess());
      } catch (e) {
        emit(AuthSupaError());
      }
    });
    
  }
}
