import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MainApp()));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(Object context) {
    return Scaffold(body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 10,
              maxHeight: 50,
              minWidth: 100,
              maxWidth: 500
            ),
            child: ElevatedButton(onPressed: (){}, child: Text("Click"))),

          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 200,
              maxWidth: 200,
              minHeight: 0,minWidth: 0,
            ),
            child: Container(
              //alignment: Alignment.center,
              child: Text("Hello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello World",style: TextStyle(fontSize: 30, overflow: TextOverflow.fade),),
            ),
          ),
        ],
      ),
    ));
  }
}
