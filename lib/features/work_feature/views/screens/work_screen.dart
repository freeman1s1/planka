import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planka_app/features/work_feature/cubits/work_cubit/work_cubit.dart';
import 'package:planka_app/features/work_feature/views/screens/timer_screen.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Планка'),
      ),
      body: BlocProvider<WorkCubit>(
        create: (context) => WorkCubit(),
        child: BlocBuilder<WorkCubit, WorkState>(
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<WorkCubit>().emitTimerState();
                      },
                      child: Text(
                        'Таймер',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<WorkCubit>().emitStopwatchState();
                      },
                      child: Text(
                        'Секундомер',
                      ),
                    ),
                  ],
                ),
                const TimerTab(),
              ],
            );
          },
        ),
      ),
    );
  }
}
