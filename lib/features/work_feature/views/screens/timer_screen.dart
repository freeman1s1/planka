import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planka_app/features/work_feature/cubits/timer_cubit/timer_cubit.dart';

class TimerTab extends StatelessWidget {
  const TimerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TimerCubit>(
      create: (context) => TimerCubit(),
      child: BlocBuilder<TimerCubit, TimerState>(
        builder: (context, state) {
          if (state is TimerInAction) {
            return StreamBuilder<int>(
              stream: state.currentTime,
              builder: (_, snapshot) {
                return Text(snapshot.data.toString());
              },
            );
          }
          return GestureDetector(
            onTap: () {
              context.read<TimerCubit>().addInActionState();
            },
            child: Text('start'),
          );
        },
      ),
    );
  }
}
