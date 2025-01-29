import 'package:flutter/material.dart';
import 'package:flutter_talk_example/bottom_nav_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BottomNavScreen(),
    );
  }
}
