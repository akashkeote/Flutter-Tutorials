import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Akash(),
    );
  }
}

class Akash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _AkashState();
        

  
}

class _AkashState extends State<Akash>{
  var counter = 0;
  @override
  Widget build(Object context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: $counter "),
            ElevatedButton(onPressed: (){
              
            setState(() {
              counter++;
            });
            }, child: Text("Click ")),
          ],
        ),
      ),
    );
  }

}