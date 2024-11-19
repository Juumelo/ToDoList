import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/difficultyLevel.dart';

class Task extends StatefulWidget {
  final String name;
  final String foto;
  final int dificuldade;

  const Task(this.name, this.foto, this.dificuldade, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.purple),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey),
                      width: 75,
                      height: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(widget.foto, fit: BoxFit.cover)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text(
                              widget.name,
                              style: const TextStyle(fontSize: 21),
                              overflow: TextOverflow.ellipsis,
                            )),
                        Difficulty(difficultyLevel: widget.dificuldade,),
                      ],
                    ),
                    SizedBox(
                      height: 55,
                      width: 70,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              nivel <= (10 * widget.dificuldade -1) ? nivel++ : nivel=0;
                            });

                          },
                          child: const Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.purple,
                              ),
                              Text(
                                "UP",
                                style: TextStyle(color: Colors.purple),
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
                    child: SizedBox(
                      width: 200,
                      child: LinearProgressIndicator(
                        color: Colors.amber[300],
                        value: (widget.dificuldade > 0)
                            ? (nivel / widget.dificuldade) / 10
                            : 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Nivel $nivel",
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}