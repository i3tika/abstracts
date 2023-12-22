import 'dart:async';

import 'package:abstracts/core/storage/sher_storage.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'local_lang_event.dart';

part 'local_lang_state.dart';

class LocalLangBloc extends Bloc<LocalLangEvent, LocalLangState> {
  LocalLangBloc() : super(LocalLangInitial()) {
    on<LocalLangEvent>(
      (event, emit) async {
        if (event is InitialLocalLang) {
          if (sharedPreferences!.getString('lang') != null) {
            if (sharedPreferences!.getString('lang') == 'en') {
              emit(AppChangeLang(languageCode: 'en'));
            } else {
              emit(AppChangeLang(languageCode: 'kg'));
            }
          }
          ;
        } else if (event is KgLocalLangEvent) {
          sharedPreferences!.setString('lang', 'kg');
          emit(AppChangeLang(languageCode: 'kg'));
        } else if (event is EnLocalLangEvent) {
          sharedPreferences!.setString('lang', 'en');
          emit(AppChangeLang(languageCode: 'en'));
        }
      },
    );
  }
}
