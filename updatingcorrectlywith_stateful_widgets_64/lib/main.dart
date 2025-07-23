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
  var no1Ctrl = TextEditingController();
  var no2Ctrl = TextEditingController();
  var res = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Calculator')),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 150, child: TextField(controller: no1Ctrl)),
              Container(width: 150, child: TextField(controller: no2Ctrl)),
               SizedBox(height: 20,),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        var no1 = int.parse(no1Ctrl.text.toString());
                        var no2 = int.parse(no2Ctrl.text.toString());
                        res = "Sum is ${(no1 + no2).toStringAsFixed(2)}";
                      });
                    },
                    child: Text(
                      "Add",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () { setState(() {
                        var no1 = int.parse(no1Ctrl.text.toString());
                        var no2 = int.parse(no2Ctrl.text.toString());
                        res = "Sub is ${(no1 - no2).toStringAsFixed(2)}";
                      });},
                    child: Text(
                      "Sub",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () { setState(() {
                        var no1 = int.parse(no1Ctrl.text.toString());
                        var no2 = int.parse(no2Ctrl.text.toString());
                        res = "Mul is ${(no1 * no2).toStringAsFixed(2)}";
                      });},
                    child: Text(
                      "Mul",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () { setState(() {
                        var no1 = int.parse(no1Ctrl.text.toString());
                        var no2 = int.parse(no2Ctrl.text.toString());
                        res = "Div is ${(no1 / no2).toStringAsFixed(2)}";
                      });},
                    child: Text(
                      "Div",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(res,style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),
            ],
          ),
        ),
      ),
    );
  }
}
