import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container( ),
          title: const Text(
            'Tarefas',
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
          backgroundColor: const Color.fromARGB(255, 2, 176, 182),
        ),
        body: ListView(
          children: const [
            Task("Aprender Flutter",'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
            Task("Aprofundar em Css",'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJ0dbGGNIZr9aedsSgGnhi0Au54LG5Ju4V7g&s'),
            Task("Melhorar Meu Portifólio",'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQh2os10Lel2NI3WKBh0AcIku-50-fVd7moHAcinuAucjtUe-QTpoA6V8nMqJdSSHdESh4&usqp=CAU'),
          //   Task("Voltar pro Inglês",'data:image/png;base64,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'),
          //   Task("Tocar Violão",'data:image/png;base64,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'),
          //   Task("Ler 10 Páginas do livro",'data:image/png;base64,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'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String name;
  final String foto;
  const Task(this.name,this.foto, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 2, 176, 182),
            height: 140,
          ),
          Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black26,
                      width: 72,
                      height: 100,
                      child: Image.network(
                        fit: BoxFit.cover, widget.foto)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 200,
                            child: Text(
                              widget.name,
                              style: TextStyle(fontSize: 21),
                              overflow: TextOverflow.ellipsis,
                            )),
                            Row(
                              children: [
                                Icon(Icons.star, size: 15, color: Colors.blueGrey,),
                                Icon(Icons.star, size: 15, color: Colors.blueGrey,),
                                Icon(Icons.star, size: 15, color: Colors.blueGrey[100],),
                                Icon(Icons.star, size: 15, color: Colors.blueGrey[100],),
                                Icon(Icons.star, size: 15, color: Colors.blueGrey[100],),
                              ],
                            )
                      ],
                    ),
                    Container(
                      height: 55,
                      width: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel++;
                            });
                          },
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.arrow_drop_up,
                                color: Color.fromARGB(255, 2, 176, 182),
                              ),
                              const Text(
                                "UP",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 2, 176, 182)),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: LinearProgressIndicator(
                        color: Colors.white,
                        value: nivel / 10,
                      ),
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Nivel $nivel",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      )),
    );
  }
}
