import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/task.dart';
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
        children: const [
          Task("Aprender Flutter", "assets/images/flutter.png", 3),
          Task("Aprofundar em Css", 'assets/images/css.png', 2),
          Task("Melhorar Meu Portifólio", 'assets/images/git.png', 1),
          Task("Voltar pro Inglês", 'assets/images/ingles.png', 3),
          Task("Tocar Violão", 'assets/images/violao.png', 4),
          Task("Ler 10 Páginas do livro", 'assets/images/livro.jpeg', 2),
          SizedBox(height: 80,),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => FormScreen(),),);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}