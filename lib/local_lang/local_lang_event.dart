part of 'local_lang_bloc.dart';

abstract class LocalLangEvent extends Equatable {
  const LocalLangEvent();
}

class InitialLocalLang extends LocalLangEvent{
  @override
  List<Object> get props => [];
}

class KgLocalLangEvent extends LocalLangEvent{
  @override
  List<Object> get props => [];
}



class EnLocalLangEvent extends LocalLangEvent{
  @override
  List<Object> get props => [];
}
