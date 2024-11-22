import 'dart:ffi';

import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nova Tarefa",
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          height: 650,
          width: 375,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 254, 242, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText:'Usuário',
                        fillColor: Colors.white70,
                        filled: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: difficultyController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
                        labelText:'Dificuldade' ,
                        fillColor: Colors.white70,
                        filled: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: imageController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Imagem',
                        fillColor: Colors.white70,
                        filled: true),
                  ),
                ),
                Container(
                  height: 100,
                  width: 72,
                  decoration: BoxDecoration(
                    color: Colors.purple[200],
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.purple),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(imageController.text, fit: BoxFit.cover,),
                  ),
                ),
                  ElevatedButton(onPressed: (){print(nameController.text);},child: const Text("Adicionar"),),
              ],
          ),
        ),
      ),
    );
  }
}
