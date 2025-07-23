import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {




  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    var aIndex = [0, 1, 2, 3, 4, 5];
    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: 
            // Container(child: Text('Hello World'),width: double.infinity,),
            // Container(child: Text('Hello World'),width: double.infinity,),
            // Container(child: Text('Hello World'),width: double.infinity,),
            // Container(child: Text('Hello World'),width: double.infinity,),
            // Container(child: Text('Hello World'),width: double.infinity,),
            // Container(child: Text('Hello World'),width: double.infinity,),
            // Container(child: Text('Hello World'),width: double.infinity,),
            aIndex.map((value)=> 
              Container(
                width: double.infinity,
                height: 200,
                //alignment: Alignment.center,
                color: Colors.primaries[value % Colors.primaries.length],
                child: Text(
                  'Item $value',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              )
            ).toList(),
          
        ),
      ),
    );
  }
}
