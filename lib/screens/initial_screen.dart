import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/task.dart';
import 'package:flutter_application_1/data/task_inherited.dart';
import 'package:flutter_application_1/screens/form_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text(
          'Tarefas',
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
        padding: EdgeInsets.only(top: 10, bottom: 70),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (contextNew) => FormScreen(taskContext: context,),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
