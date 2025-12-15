import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});
var arrdata=['item1','item2','item3','item4','item5'];
var arrdata1=[
  {
    'name':'akash',
    'sec':'a',
    'roll no':'07'
  },{
        'name':'jay',
    'sec':'a',
    'roll no':'08'
  },{
        'name':'aka',
    'sec':'a',
    'roll no':'09'
  }
];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView( children: arrdata.map((value){
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                       
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                       
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: Text(value))),
                  ),
                );
              }).toList(),),
            ),
           Text("Listview with JSON"),
            Expanded(
              child: ListView(
                children:arrdata1.map((value)=>
                ListTile(
                  leading: Icon(Icons.contact_emergency_rounded),
                  title:Text(value['name'].toString()),
                  subtitle: Text(value['roll no'].toString()),
                  trailing: CircleAvatar(child: Text(value['sec'].toString()),radius: 20,backgroundColor: Colors.amber,),
              
                )
              
                ///children: arrdata1.map((value)=>Container(
                  //child: Text(value)),
              
                ).toList()
                ),
            ),
 
          ],
        ),
      ),
    );
  }
}
