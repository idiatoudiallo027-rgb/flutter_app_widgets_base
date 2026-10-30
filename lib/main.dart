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
          child: SingleChildScrollView(
            // Permet d'éviter les dépassements d'écran
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 1. Textes du haut
                const Text('Hello World!'),
                const Text('Bienvenu dans mon application de flutter'),

                const SizedBox(height: 10),

                // 2. Le Container stylisé (Étape 3)
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Boîte stylisée avec Container',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),

                const Text('Ceci est un autre texte ajouté après le Container'),

                const SizedBox(height: 15),

                // 3. Le Stack (Étape 4)
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(width: 200, height: 200, color: Colors.blue[100]),
                    const Icon(Icons.star, size: 100, color: Colors.amber),
                    const Text(
                      "Superposé !",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // 4. Le Row avec les icônes (Étape 5)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.home, color: Colors.blue, size: 40),
                    Icon(Icons.star, color: Colors.amber, size: 40),
                    Icon(Icons.favorite, color: Colors.red, size: 40),
                    Icon(Icons.person, color: Colors.green, size: 40),
                  ],
                ),

                const SizedBox(height: 25),

                // 5. La deuxième colonne (Étape 6) tout en bas
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Titre principal',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Sous-titre ou description'),
                    SizedBox(height: 10),
                    Icon(Icons.thumb_up, color: Colors.green, size: 40),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
