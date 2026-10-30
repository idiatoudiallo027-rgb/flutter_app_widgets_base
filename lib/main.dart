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
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(width: 200, height: 200, color: Colors.blue[100]),
                  Icon(Icons.star, size: 100, color: Colors.amber),
                  Text(
                    "Superposé !",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.home, color: Colors.blue, size: 40),
                      Icon(Icons.star, color: Colors.amber, size: 40),
                      //Icon(Icons.settings, color: Colors.grey, size: 40),
                      Icon(Icons.favorite, color: Colors.red, size: 40),
                      Icon(Icons.person, color: Colors.green, size: 40),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
