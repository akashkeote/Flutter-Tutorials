import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Current Time ${time.hour}:${time.minute}:${time.second}',
            style: TextStyle(fontSize: 25),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  //ye line nahi likhi to real time me update nahi hoga app
                  time = DateTime.now();
                });
              },
              child: Text("Current Time"))
        ],
      ),
    );
  }
}
