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
      title: 'Flutter ClipRRect Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
                 child:Column(
                   children:[
                    ClipRRect(
                   // borderRadius: BorderRadius.all(Radius.circular(20)),
                    //borderRadius:BorderRadius.circular(20),
                                   //borderRadius: BorderRadius.all(Radius.elliptical(20, 40)),
                                   borderRadius: BorderRadius.only(topLeft: Radius.circular(90),bottomLeft: Radius.elliptical(50, 50),bottomRight: Radius.circular(90)),
                     child: Container(
                      width: 200,
                      height: 200,
                      color:Colors.amber
                     ),
                   ),
                                       ClipRRect(
                   // borderRadius: BorderRadius.all(Radius.circular(20)),
                    //borderRadius:BorderRadius.circular(20),
                                   //borderRadius: BorderRadius.all(Radius.elliptical(20, 40)),
                                   borderRadius: BorderRadius.only(topLeft: Radius.circular(90),bottomLeft: Radius.elliptical(50, 50),bottomRight: Radius.circular(90)),
                     child: Container(
                      width: 600,
                      height: 600,
                       child: Image.network(
                                  'https://storage.googleapis.com/cms-storage-bucket/dashatar-dash.780e0e64d323aad2cdd5.png',
                       ),
                     ),
                   ),
                   ] 
                 )
    ));
  }
}
