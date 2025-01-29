import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetScreen extends StatelessWidget {
  const SetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetCubit, int>(
      builder: (ctx, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Set'),
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('$state'),
            ),
          ),
          body: Center(
            child: MaterialButton(
              color: Colors.amber,
              onPressed: ctx.read<SetCubit>().increment,
              child: const Text('Increment',
                  style: TextStyle(
                    fontSize: 32,
                  )),
            ),
          ),
        );
      },
    );
  }
}

class SetCubit extends Cubit<int> {
  SetCubit() : super(0);

  final StreamController<int> streamController =
      StreamController<int>.broadcast();

  void increment() {
    final newState = state + 1;
    streamController.add(newState);
    emit(newState);
  }
}
