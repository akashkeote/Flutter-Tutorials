import 'package:flutter/material.dart';

class Roundedbtn extends StatelessWidget {
  final String btnName;
  final Icon? icnName;
  final Color? clr;
  final Color? bgclr;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const Roundedbtn({
    super.key,
    required this.btnName,
    this.icnName,
    this.clr,
   required this.textStyle,
    this.callback, this.bgclr,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      style: ElevatedButton.styleFrom(
       foregroundColor: bgclr,
       shadowColor: clr,
       shape: RoundedRectangleBorder(borderRadius: 
       BorderRadius.only(topRight: Radius.circular(50),
       bottomLeft: Radius.circular(50))
      ),),
      child: icnName!=null?
       Row(
        children: [
          icnName!
          ,Text(btnName, style: textStyle),
        ],
      ):Text(btnName,style: textStyle,),
    );
  }
}
