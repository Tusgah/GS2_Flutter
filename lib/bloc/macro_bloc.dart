import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:macros_amounts/models/macros_model.dart';
import 'package:macros_amounts/service/calculator_service.dart';

part 'macro_event.dart';
part 'macro_state.dart';

class MacroBloc extends Bloc<GetMacroEvent, MacroState> {
  MacroBloc() : super(MacroInitial()) {
    on<GetMacroEvent>(_onGetMacroEvent);
  }

  void _onGetMacroEvent(
    GetMacroEvent event,
    Emitter emit,
  ) async {
    try {
      emit(MacroLoading());

      final response = await getMacros(
        gender: event.gender,
        age: event.age,
        height: event.height,
        weight: event.weight,
        activityLevel: event.activityLevel,
        goal: event.goal,
      );

      emit(MacroSuccess(data: response));
    } catch (error) {
      emit(MacroError(error: error.toString()));
    }
  }
}
