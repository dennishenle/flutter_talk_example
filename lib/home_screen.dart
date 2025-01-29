import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, int>(
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
      ),
    );
  }
}

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);

  void increment() => emit(state + 1);
}
