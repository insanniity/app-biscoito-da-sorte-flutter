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
              const CircleAvatar(
                backgroundImage: AssetImage("images/biscoito_inteiro.jpg"),
                radius: 80,
                backgroundColor: Colors.white,
              ),
              const Text(
                "Clique no botão para quebrar o biscoito.",
                textAlign: TextAlign.center ,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                onPressed: (){},
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
