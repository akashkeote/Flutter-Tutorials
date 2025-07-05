import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:switchingpages_66/Akash.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => MaterialApp(
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // This fixes the error
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    ),
  ));
}


class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       elevation: 4.0,
      
      ),
      body: Center(
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
