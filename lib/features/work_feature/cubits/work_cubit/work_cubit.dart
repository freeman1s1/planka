import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'work_state.dart';

class WorkCubit extends Cubit<WorkState> {
  WorkCubit() : super(WorkTimer());



  emitTimerState() => emit(WorkTimer());

  emitStopwatchState() => emit(WorkStopwatch());
}
