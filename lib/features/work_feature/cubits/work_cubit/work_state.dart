part of 'work_cubit.dart';

abstract class WorkState extends Equatable {
  const WorkState();

  @override
  List<Object> get props => [];
}

class WorkTimer extends WorkState {}

class WorkStopwatch extends WorkState {}
