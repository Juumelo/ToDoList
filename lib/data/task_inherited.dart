import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/task.dart';

class TaskInherited  extends InheritedWidget{
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List <Task>taskList = [          
          Task("Aprender Flutter", "assets/images/flutter.png", 3),
          Task("Aprofundar em Css", 'assets/images/css.png', 2),
          Task("Melhorar Meu Portifólio", 'assets/images/git.png', 1),
          Task("Voltar pro Inglês", 'assets/images/ingles.png', 3),
          Task("Tocar Violão", 'assets/images/violao.png', 4),];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static of(BuildContext context) {
    final TaskInherited ? result = context.dependOnInheritedWidgetOfExactType();
    assert(result != null, 'no found in context');
    return result!;
  }

 @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }

}