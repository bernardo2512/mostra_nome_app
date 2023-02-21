import 'package:flutter/material.dart';

class AulaUmRobson extends StatefulWidget {
  const AulaUmRobson({super.key});

  @override
  State<AulaUmRobson> createState() => _AulaUmRobsonState();
}

class _AulaUmRobsonState extends State<AulaUmRobson> {
  TextEditingController inputController = TextEditingController();

  String outputTexto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo 1 - App Inventor"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2)),
          width: 375,
          height: 700,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: inputController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Digite seu nome:",
                      fillColor: Colors.white70,
                      filled: true),
                ),
              ),
              Text(outputTexto),
              ElevatedButton(onPressed: (){
                setState(() {
                  outputTexto = "Olá, ${inputController.text}";
                });
              }, child: Text("Aperte aqui"))
            ],
          ),
        ),
      ),
    );
  }
}
