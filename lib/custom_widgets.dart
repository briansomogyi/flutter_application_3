import 'package:flutter/material.dart';

Widget buildHelloWorldText(String message) {
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

Widget buildButton(String label) {
  return ElevatedButton(
    onPressed: () => print('Buton apăsat!'),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.pink.shade100,
    ),
    child: Text(label),
  );
}
