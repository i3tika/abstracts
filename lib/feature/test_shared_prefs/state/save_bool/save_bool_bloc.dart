import 'package:abstracts/core/storage/shared_prefs/shared_prefs.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'save_bool_event.dart';
part 'save_bool_state.dart';


class TelegramBloc extends Bloc<TelegramEvent, TelegramState> {
  TelegramBloc() : super(TelegramInitial()) {
    on<CloseTelegramBanner>((event, emit) async {
      emit(TelegramCloseLoading());
      bool? isTelegramBannerExit = await SharedPrefs.getTelegramChat();
      if (isTelegramBannerExit ?? true) {
        await SharedPrefs.setTelegramChat(telegram: false);
        emit(TelegramCloseSuccess());
      }
    });

    on<CheckBannerIsExit>((event, emit) async {
      emit(TelegramCloseLoading());
      bool? isTelegramBannerExit = await SharedPrefs.getTelegramChat();
      if (isTelegramBannerExit != null) {
        if (isTelegramBannerExit) {
          emit(TelegramBannerExist());
        } else {
          emit(TelegramBannerNotExist());
        }
      } else {
        await SharedPrefs.setTelegramChat(telegram: true);
        bool? isTelegramBannerExit = await SharedPrefs.getTelegramChat();
        if (isTelegramBannerExit != null) {
          if (isTelegramBannerExit) {
            emit(TelegramBannerExist());
          } else {
            emit(TelegramBannerNotExist());
          }
        }
      }
    });
  }
}
