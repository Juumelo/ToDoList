import 'package:flutter/material.dart';
import 'package:Tarefas/data/task_inherited.dart';
import 'package:Tarefas/screens/initial_screen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 25, 247)),
        useMaterial3: true,
      ),
      home: TaskInherited(child: const InitialScreen()) ,
    );
  }
}





