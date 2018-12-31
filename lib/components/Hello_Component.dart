import 'package:flutter/material.dart';

class Hello_Component extends StatelessWidget{
   @override
     Widget build(BuildContext context) {
       // TODO: implement build
       return Center(  // Center widget
          child: Text(  // 文字widget，作为Center的子widget
             'Hello',  // 文字内容
             textDirection: TextDirection.ltr,  // 文字方向，左到右
             style: TextStyle(
               fontSize: 40.0,
               fontWeight: FontWeight.bold,
               color: Colors.yellow
             )
          ), 
        );
     }
 }