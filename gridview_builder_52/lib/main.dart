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
  var myarr =[Colors.red,Colors.blue,Colors.green,Colors.red,Colors.blue,Colors.green];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DatePicker()")),
     body://Column(
//         children: [
//           GridView.count(
//             crossAxisCount: 3,
//             crossAxisSpacing: 11,
//             mainAxisSpacing: 11,
//             children: [
//               Container(color: myarr[0]),
//               Container(color: myarr[1]),
//               Container(color: myarr[2]),
//               Container(color: myarr[1]),
//               Container(color: myarr[0]),
//               Container(color: myarr[2]),
//             ],
//           ),
//           Container(),
//  GridView.extent(
//     maxCrossAxisExtent:100,
//         crossAxisSpacing:11,
//         mainAxisSpacing:11,
        
//       children:[
//          Container(color:myarr[0]),
//          Container(color:myarr[1]),
//          Container(color:myarr[2]),
//          Container(color:myarr[1]),
//          Container(color:myarr[0]),
//          Container(color:myarr[2])
//       ]),
//         ],
//       ),
//In sabka baap

//count fix
// GridView.builder(itemBuilder:(context,index){
//         return Container(color:myarr[index],);
//       },itemCount:myarr.length,gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 11,crossAxisSpacing: 11)),
//     );
//   }
// }


//child fix 
GridView.builder(itemBuilder:(context,index){
        return Container(color:myarr[index],);
      },itemCount:myarr.length,gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 100,mainAxisSpacing: 11,crossAxisSpacing: 11),
    ),);
  }
}