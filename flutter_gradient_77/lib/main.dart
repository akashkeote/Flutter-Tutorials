import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar:AppBar(backgroundColor: const Color.fromARGB(166, 139, 203, 255),) ,
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: //LinearGradient(colors: [const Color.fromARGB(255, 7, 197, 255),const Color.fromARGB(188, 33, 149, 243),const Color.fromARGB(255, 139, 203, 255)],
              //begin: FractionalOffset(1.0, 0.5),end: FractionalOffset(0.0,0.5),
              //stops: [0.25,0.6,1.0])
              RadialGradient(colors:[const Color.fromARGB(120, 7, 197, 255),const Color.fromARGB(134, 33, 149, 243),const Color.fromARGB(166, 139, 203, 255)],center:Alignment.bottomCenter,stops: [0.1,0.4,1.0])
            ),
            child: Column(mainAxisAlignment:MainAxisAlignment.center,children:  [ Center(child: Text('Hello World!'))])),
        ),
      ),
    );
  }
}
