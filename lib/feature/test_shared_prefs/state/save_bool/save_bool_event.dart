
part of 'save_bool_bloc.dart';
abstract class TelegramEvent extends Equatable {
  const TelegramEvent();
}

class CloseTelegramBanner extends TelegramEvent {
  @override
  List<Object?> get props => [];
}

class CheckBannerIsExit extends TelegramEvent {
  @override
  List<Object?> get props => [];
}
