import 'dart:async';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => MainApp(), // Wrap your app
  ),
);

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isFirst = true;
  //@override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 5), () {
  //     reload();
  //   });
  // }

  void reload() {
    setState(() {
      if (isFirst)
        isFirst = false;
      else
        isFirst = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              AnimatedCrossFade(
                firstChild: Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
                secondChild: Image.asset("assets/images.jpeg"),
                crossFadeState: isFirst
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 5),
                sizeCurve: Curves.fastOutSlowIn,
              ),
              ElevatedButton(
                onPressed: () {
                  reload();
                  setState(() {});
                },
                child: Text("Animate"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
