import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DatePicker()',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DatePicker()")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Select Date", style: TextStyle(fontSize: 25)),
            ElevatedButton(
              onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2025),
                  lastDate: DateTime(2026),
                );
                if (datePicked != null) {
                  print(
                    "Date : ${datePicked.day} ${datePicked.month} ${datePicked.year}",
                  );
                }
              },
              child: Text("Show", style: TextStyle(fontSize: 20)),
            ),
            Text("Select Time ", style: TextStyle(fontSize: 25)),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? TimePicked = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input,
                );
                if (TimePicked != null)
                  print(
                    "Time Of Now: ${TimePicked.hour} : ${TimePicked.minute} ",
                  );
              },
              child: Text("Show Time"),
            ),
          ],
        ),
      ),
    );
  }
}
