part of 'timer_cubit.dart';

abstract class TimerState extends Equatable {
  const TimerState();

  @override
  List<Object> get props => [];
}

class TimerStart extends TimerState {
  const TimerStart(this.startTime);

  final int startTime;
}

class TimerInAction extends TimerState {
  const TimerInAction(this.currentTime);

  final PublishSubject<int> currentTime;
}

class TimerPause extends TimerState {
  const TimerPause(this.currentTime);

  final int currentTime;
}
