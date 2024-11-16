import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counters/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(colorSchemeSeed: const Color.fromARGB(255, 0, 81, 4)),
        home: const CounterScreen());
  }
}
