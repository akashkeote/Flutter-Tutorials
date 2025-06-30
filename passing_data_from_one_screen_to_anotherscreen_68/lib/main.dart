import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:passing_data_from_one_screen_to_anotherscreen_68/pass.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => MainApp()));
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var nameCtrl;
  @override
  void initState() {
    super.initState();
    nameCtrl = TextEditingController();
  }

  @override
  void dispose() {
    nameCtrl.dispose(); // Important: prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) =>  Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Enter Your '),
                TextField(controller: nameCtrl),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MyWidget(inputctrl: nameCtrl.text.toString()),
                      ),
                    );
                  },
                  child: Text("Press Me"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
