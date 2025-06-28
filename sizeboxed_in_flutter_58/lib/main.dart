import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // body: Center(
        //   child: SizedBox(
        //     width: 200,
        //     height: 34,
        //     child: ElevatedButton(
        //       onPressed: (){},
        //     child:
        //     Text("Click",),),
        //   ),
        // )
        // ,

        //pura screen le liya
        // body: SizedBox.expand(

        //     child: ElevatedButton(
        //       onPressed: (){},
        //     child:
        //     Text("Click",),),
        //   ),

        // body: SizedBox.shrink(

        //             child: ElevatedButton(
        //               onPressed: (){},
        //             child:
        //             Text("Click",),),
        //           ),

        //         ),
        // body: Center(
        //   child: SizedBox.square(
        //     dimension: 100,
        //     child: ElevatedButton(onPressed: () {}, child: Text("Click")),
        //   ),
        // ),
        // body: Center(
        //   child: Wrap(
        //     direction: Axis.horizontal,
        //     children: [
        //       SizedBox.square(
        //         dimension: 100,
        //         child: ElevatedButton(onPressed: () {}, child: Text("Click")),
        //       ),
        //       SizedBox(height: 10, width: 10),
        //       SizedBox.square(
        //         dimension: 100,
        //         child: ElevatedButton(onPressed: () {}, child: Text("Click")),
        //       ),
        //     ],
        //   ),
        // ),
        // body: Center(
        //   child: ConstrainedBox(
        //     constraints: BoxConstraints(
        //       minHeight: 20,
        //       minWidth: 100,
        //       maxHeight: 80,
        //       maxWidth: 400
        //     ),
        //     child: SizedBox.expand(
                    
        //             child: ElevatedButton(onPressed: () {}, child: Text("Click")),
        //           ),
        //   ),
        // ),

         body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 20,
              minWidth: 100,
              maxHeight: 80,
              maxWidth: 400
            ),
            child: SizedBox.shrink(
                    
                    child: ElevatedButton(onPressed: () {}, child: Text("Click")),
                  ),
          ),
        ),
      ),
    );
  }
}
