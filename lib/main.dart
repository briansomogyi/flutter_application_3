import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  final Widget widget = Directionality(
    textDirection: TextDirection.ltr,
    child: Padding(
      padding: const EdgeInsets.all(100.0),
      child: Transform.rotate(
        angle: -math.pi / 20.0,
        child: Container(
          // color: Colors.green.shade100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.0),
            color: Colors.blue.shade100,
          ),
          // margin: EdgeInsets.all(100.0),
          padding: EdgeInsets.all(100.0),
          child: Column(
            // spacing: 80.0,
            children: [
              FlutterLogo(style: FlutterLogoStyle.markOnly, size: 100.0),
              SizedBox(height: 30.0),
              Text(
                'Hellow world',
                style: TextStyle(
                  backgroundColor: Colors.orange.shade100,
                  color: Colors.green.shade100,
                  fontSize: 32.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 10.0,
                ),
              ),
              SizedBox(height: 60.0),
              ElevatedButton(
                onPressed: () => print('Buton apăsat!'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.pink.shade100,
                ),
                child: Text('Apăsați-mă'),
              ),
            ],
          ),
        ),
      ),
    ),
  );
  runApp(widget);
}
