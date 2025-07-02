import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MainApp()));
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final buffer = StringBuffer();

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    buffer.write('Hello');
    buffer.write(' ');
    buffer.write('World!');
    buffer.writeln('Akash ${time}');
    buffer.write('akash:${time}');
    buffer.writeAll(['akash','keote',1.2,2.64]);
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text(buffer.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)),
      ),
    );
  }
}
