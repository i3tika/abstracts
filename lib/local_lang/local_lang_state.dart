part of 'local_lang_bloc.dart';

abstract class LocalLangState extends Equatable {
  const LocalLangState();
}

class LocalLangInitial extends LocalLangState {
  @override
  List<Object> get props => [];
}

class AppChangeLang extends LocalLangState {
  const AppChangeLang({required this.languageCode});
  final String languageCode;
  @override
  List<Object> get props => [languageCode];
}

