import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello World!'),
              const Text('Bienvenu dans mon application de flutter'),

              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  'Boîte stylisée avec Container',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const Text('Ceci est un autre texte ajouté après le Container'),
            ],
          ),
        ),
      ),
    );
  }
}
