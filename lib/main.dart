import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var biscoitoImg = "images/biscoito_inteiro.jpg";
  var listaFrases = [
      "Frase01",
      "Frase02",
      "Frase03",
      "Frase04",
      "Frase05",
      "Frase06",
      "Frase07",
      "Frase08",
      "Frase09",
  ];
  var fraseDaSorte = "Clique no botão para quebrar o biscoito.";
  void quebrarBiscoito(){
    var numero = Random().nextInt(listaFrases.length);
    setState((){
      fraseDaSorte = listaFrases[numero];
      biscoitoImg = "images/biscoito_quebrado.jpg";
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Biscoito da sorte"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(biscoitoImg),
                radius: 80,
                backgroundColor: Colors.white,
              ),
              Text(
                fraseDaSorte,
                textAlign: TextAlign.center ,
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: "Pacifico"
                ),
              ),
              ElevatedButton(
                onPressed: quebrarBiscoito,
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                ),
                child: const Text("Quebrar biscoito!"),
              )
            ],
          ),
        )
      ),
    );
  }
}
