import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  final List<Color> myarr = const [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
    Colors.cyan,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Wrap Widget Example")),
        body: SizedBox(
           height: double.infinity,
          width: double.infinity,
          child: Wrap(
            direction: Axis.horizontal,
            spacing: 20.0, // Horizontal space between items
            runSpacing: 10.0, // Vertical space between rows
            alignment: WrapAlignment.spaceBetween,
            children: [
              Container(
                width: 80,
                height: 80,
                color: myarr[0],
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 80,
                color: myarr[1],
                child: const Center(
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 60,
                height: 80,
                color: myarr[2],
                child: const Center(
                  child: Text(
                    '3',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 80,
                color: myarr[3],
                child: const Center(
                  child: Text(
                    '4',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 80,
                color: myarr[4],
                child: const Center(
                  child: Text(
                    '5',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 80,
                color: myarr[5],
                child: const Center(
                  child: Text(
                    '6',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 80,
                color: myarr[0],
                child: const Center(
                  child: Text(
                    '7',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 120,
                height: 80,
                color: myarr[1],
                child: const Center(
                  child: Text(
                    '8',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 60,
                height: 80,
                color: myarr[2],
                child: const Center(
                  child: Text(
                    '9',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 80,
                color: myarr[3],
                child: const Center(
                  child: Text(
                    '10',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 90,
                height: 80,
                color: myarr[4],
                child: const Center(
                  child: Text(
                    '11',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 110,
                height: 80,
                color: myarr[5],
                child: const Center(
                  child: Text(
                    '12',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
