import 'package:create_a_custom_widget_56/widgets/roundedbtn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
      ),
      home: const MyHomePage(title: 'Creating a Custom Widget in Flutter'),
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
      appBar: AppBar(
        
       
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                 Container(
              width: 150,
              height: 100,
              child: Roundedbtn(btnName: "Press Me",icnName: Icon(Icons.access_time),textStyle:TextStyle(fontSize: 11),)),
            Container(height: 11,),
            Container(
              width: 150,
              height: 100,
              child: Roundedbtn(btnName: "Press Me",textStyle:TextStyle(fontSize: 11,backgroundColor: Color.fromARGB(0, 1, 1, 24)),clr: Color.fromARGB(255, 255, 1, 158),callback: () => {print("Press")},)),
          ],
        ),
      ),
    );
  }
}
