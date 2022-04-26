import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rxdart/rxdart.dart';

part 'timer_state.dart';

class TimerCubit extends Cubit<TimerState> {
  TimerCubit() : super(const TimerStart(0));

  addInActionState() {
    if (state is TimerStart) {
      final TimerStart currentState = state as TimerStart;
      final currTime = PublishSubject<int>();
      currTime.add(currentState.startTime);
      Timer _timer = new Timer.periodic(
        const Duration(seconds: 1),
        (Timer timer) {
          // if (_start == 0) {
          //   setState(() {
          //     timer.cancel();
          //   });
          // } else {
          //   setState(() {
          //     _start--;
          //   });
          // }
          currTime.add(currentState.startTime + 1);
        },
      );
      emit(TimerInAction(currTime));
    } else if (state is TimerPause) {
      final TimerPause currentState = state as TimerPause;
      final currTime = PublishSubject<int>();
      currTime.add(currentState.currentTime);
      emit(TimerInAction(currTime));
    }
  }

  addResumeState() {}

  addStartState() {}
}
