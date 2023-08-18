

import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final Color iconcolor;
  final IconData buttonIcon;
   void function (){} final buttonAction;
  CircularButton({ required this.buttonIcon,required this.buttonAction,  this.iconcolor=Colors.black });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      child: IconButton(icon:Icon(buttonIcon,
        color: iconcolor,
        size: 25,
      ),
        onPressed: buttonAction,
      ),
    ) ;
  }
}
