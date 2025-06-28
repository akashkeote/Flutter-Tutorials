import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: RichText(text: TextSpan(
            style: TextStyle(fontSize: 30,color: Colors.blue),
            children: <TextSpan> [
                  TextSpan(text: "Hello ",style: TextStyle(color: Colors.deepOrangeAccent)),
                  TextSpan(text: "Akash",style: TextStyle(fontSize: 40,color: Colors.purple,fontStyle: FontStyle.italic,fontWeight: FontWeight.w700)),
                  TextSpan(text: "Flutter",style: TextStyle(fontWeight: FontWeight.bold))
            ]
          )),
        )
      ),
    );
  }
}
