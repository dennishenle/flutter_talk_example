import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_talk_example/bottom_nav_screen.dart';
import 'package:flutter_talk_example/home_screen.dart';
import 'package:flutter_talk_example/set_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SetCubit()),
          BlocProvider(
            create: (context) => HomeCubit(setCubit: context.read<SetCubit>()),
          ),
        ],
        child: const BottomNavScreen(),
      ),
    );
  }
}
