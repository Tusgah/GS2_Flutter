part of 'macro_bloc.dart';

sealed class MacrosEvent extends Equatable {
  const MacrosEvent();

  @override
  List<Object?> get props => [];
}

class GetMacroEvent extends MacrosEvent {
  final String? gender;
  final int? age;
  final int? height;
  final int? weight;
  final String? activityLevel;
  final String? goal;

  const GetMacroEvent(
      {this.gender,
      this.age,
      this.height,
      this.weight,
      this.activityLevel,
      this.goal});
}
