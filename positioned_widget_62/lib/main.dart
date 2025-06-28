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
        body: Container(
          width: 300,
          height: 300,
          color: const Color.fromARGB(255, 0, 0, 0),
          child: Stack(
            children: [
              Positioned(
               // left: 100,
                right: 10,
                bottom: 10,
               // height: 100,

                child: Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
