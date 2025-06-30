import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: akash());
  }
}

class akash extends StatefulWidget {
  akash({super.key});
  @override
  State<akash> createState() => _akashState();
}

class _akashState extends State<akash> {
  RangeValues values = RangeValues(0, 10);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      values.start.toString(),
      values.end.toString(),
    );
    return Scaffold(
      body: RangeSlider(
        values: values,
        labels: labels,
        divisions: 20,
        min: 0,
        max: 10,
        activeColor: Colors.yellow,
        inactiveColor: Colors.yellow.shade400,
        onChanged: (newvalue) {
          setState(() {
            values = newvalue;
            print('${values.start} and ${values.end}');
          });
        },
      ),
    );
  }
}
