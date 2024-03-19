part of 'save_bool_bloc.dart';

abstract class TelegramState extends Equatable {
  const TelegramState();

  @override
  List<Object> get props => [];
}

class TelegramInitial extends TelegramState {}

class TelegramCloseSuccess extends TelegramState {}

class TelegramCloseError extends TelegramState {}

class TelegramCloseLoading extends TelegramState {}

class TelegramBannerLoading extends TelegramState {}

class TelegramBannerExist extends TelegramState {}

class TelegramBannerNotExist extends TelegramState {}
