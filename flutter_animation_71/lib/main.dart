import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomepage());
  }
}

class MyHomepage extends StatefulWidget {
  MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  var w = 200.00;

  var h = 100.00;
  var toggle = true;

  Color color = Colors.blue.shade400;

  Decoration db = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        centerTitle: true,
        title: Text("Foo Animation Widgets"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Normal Zindagi"),
          Container(width: w, height: h, color: Colors.amber.shade300),
          ElevatedButton(
            onPressed: () {
              setState(() {
                w = 100;
                h = 200;
              });
            },
            child: Text("Animate"),
          ),
          SizedBox(height: 11),
          Text("Animated Zindagi"),
          AnimatedContainer(
            duration: Duration(seconds: 2),
            width: w,
            height: h,
            color: color,
            curve: Curves.slowMiddle,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                if (toggle) {
                  w = 200.00;
                  h = 100.00;
                  db = BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  );

                  toggle = false;
                } else {
                  w = 100.00;
                  h = 200.00;

                  toggle = true;
                  db = BoxDecoration(
                    color: Colors.amberAccent.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  );
                }
              });
            },
            child: Text("Animate"),
          ),
        ],
      ),
    );
  }
}
