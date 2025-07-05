import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen_flutter_67/main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return DashboardScreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            "Pushpa !Zukega nahi sala",
            style: TextStyle(fontSize: 30),
          ),
          color: Colors.amber,
        ),
      ),
    );
  }
}
