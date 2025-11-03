import 'package:flutter/material.dart';

// 1. Definim o CLASĂ nouă care moștenește StatelessWidget
class HelloWorldText extends StatelessWidget {
  // 2. Adăugăm un câmp 'final' pentru datele de care are nevoie
  final String message;

  // 3. Creăm un constructor pentru a primi datele
  // 'required' e similar cu a forța un parametru în constructorul Java
  const HelloWorldText({super.key, required this.message});

  // 4. Suprascriem metoda 'build' (Polimorfism!)
  @override
  Widget build(BuildContext context) {
    // Returnăm widget-ul Text, exact ca înainte
    return Text(
      message,
      style: TextStyle(
        backgroundColor: Colors.orange.shade100,
        color: Colors.green.shade100,
        fontSize: 32.0,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w900,
        letterSpacing: 10.0,
      ),
    );
  }
}

// Facem același lucru și pentru buton!
class MyCustomButton extends StatelessWidget {
  final String label;

  const MyCustomButton({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print('Buton apăsat!'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.pink.shade100,
      ),
      child: Text(label),
    );
  }
}
