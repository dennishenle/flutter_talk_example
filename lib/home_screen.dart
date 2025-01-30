import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_talk_example/repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (ctx, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: Center(
            child: Text('$state', style: TextStyle(fontSize: 32)),
          ),
        );
      },
    );
  }
}

class HomeCubit extends Cubit<int> {
  HomeCubit(this.repository) : super(0) {
    defineListener();
  }

  final Repository repository;
  late StreamSubscription<int> setSubscription;

  void defineListener() {
    setSubscription = repository.streamController.stream.listen(
      (value) {
        emit(value);
        // You could also look into the event and directly emit that value
      },
    );
  }
}
