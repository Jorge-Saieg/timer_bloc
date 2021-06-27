import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:timer_bloc/bloc/bloc/timer_bloc.dart';

// class TimerText extends StatelessWidget {
//   const TimerText({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // final duration = context.   select((TimerBloc bloc) => bloc.state.duration);
//         final duration = context.select((TimerBloc bloc) => bloc.state.duration);

//     return Text(data);
//     );
//   }
// }

class TimerText extends StatelessWidget {
  const TimerText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final duration = context.select((TimerBloc bloc) => bloc.state.duration);
    final minutesStr =
        ((duration / 60) % 60).floor().toString().padLeft(2, '0');
    final secondsStr = (duration % 60).floor().toString().padLeft(2, '0');
    return Text(
      '$minutesStr:$secondsStr',
      style: Theme.of(context).textTheme.headline1,
    );
  }
}