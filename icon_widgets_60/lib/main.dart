import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Icons In Flutter'),
              Icon(Icons.play_arrow_outlined,size: 100,color: Colors.blueGrey,),
               Icon(Icons.play_arrow_outlined,size: 100,color: Color.fromARGB(104, 96, 125, 139),)
            ],
          ),
        ),
      ),
    );
  }
}
