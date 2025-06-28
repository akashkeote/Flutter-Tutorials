import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello World!'),
              FaIcon(FontAwesomeIcons.amazon,size: 100,color: Colors.amber,),
              FaIcon(FontAwesomeIcons.flickr,size: 100,color: Colors.amber,)
           , FaIcon(FontAwesomeIcons.earlybirds,size: 100,color: Colors.amber,)
            ],
          ),
        ),
      ),
    );
  }
}
