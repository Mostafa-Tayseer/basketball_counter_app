import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIncrementState());
  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamPointsIncrement({required String team, required int pointsNumber}) {
    if (team == "A") {
      teamAPoints += pointsNumber;
      emit(CounterIncrementState());
    } else {
      teamBPoints += pointsNumber;
      emit(CounterIncrementState());
    }
  }

  void teamPointsReset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }
}
