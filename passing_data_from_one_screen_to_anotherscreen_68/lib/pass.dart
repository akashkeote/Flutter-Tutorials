import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.inputctrl});

  final String inputctrl; // Made final and typed as String

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Container(child: Text("Greet: $inputctrl",style: TextStyle(fontSize: 30),))));
  }
}
