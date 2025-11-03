import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'custom_widgets.dart'; // Acum importă noile clase

void main() {
  final Widget widget = Directionality(
    textDirection: TextDirection.ltr,
    child: Padding(
      padding: const EdgeInsets.all(100.0),
      child: Transform.rotate(
        angle: -math.pi / 20.0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.0),
            color: Colors.blue.shade100,
          ),
          padding: EdgeInsets.all(100.0),
          child: Column(
            children: [
              FlutterLogo(style: FlutterLogoStyle.markOnly, size: 100.0),
              SizedBox(height: 30.0),

              // SCHIMBAREA ESTE AICI:
              // În loc de funcție, apelăm constructorul clasei
              // E ca și cum am scrie `new HelloWorldText(message: 'message')` în Java
              HelloWorldText(message: 'message'),

              SizedBox(height: 60.0),

              // ȘI AICI:
              MyCustomButton(label: 'message-mă'),
            ],
          ),
        ),
      ),
    ),
  );
  runApp(widget);
}
