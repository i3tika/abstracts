part of 'auth_supa_bloc.dart';

@immutable
sealed class AuthSupaState {}

final class AuthSupaInitial extends AuthSupaState {}

final class AuthSupaLoading extends AuthSupaState {}

final class AuthSupaSuccess extends AuthSupaState {}

final class AuthSupaError extends AuthSupaState {}
