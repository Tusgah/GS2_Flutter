part of 'macro_bloc.dart';

sealed class MacroState extends Equatable {
  const MacroState();

  @override
  List<Object> get props => [];
}

final class MacroInitial extends MacroState {}

final class MacroLoading extends MacroState {}

final class MacroSuccess extends MacroState {
  final MacrosModel? data;

  const MacroSuccess({required this.data});
}

final class MacroError extends MacroState {
  final String error;

  const MacroError({required this.error});
}
