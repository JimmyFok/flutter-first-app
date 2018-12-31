import 'package:flutter/material.dart'; // 引入material的设计风格（Google的，详情可去material.io了解）
// import 'components/Hello_Component.dart';
import 'components/List_Component.dart';

// void表示不返回值，是后端语言常用，在函数前就设定好函数返回值的类型
 void main() => runApp( App() ); // 需要实例化，因为实例化就会build()

// 创建小部件。小部件需要有数据的就继承StatefulWidget，不需要的就继承StatelessWidget。从字面意思也理解了
 class App extends StatelessWidget{
   @override   // 表示这个方法是覆盖父类build的，因为这行以下都是输入build再tab创建的
     Widget build(BuildContext context) {  // 返回类型是Widget 方法名build
       
       return MaterialApp(
         debugShowCheckedModeBanner: false,  // 界面debug没了
         home: List_Component(), 
         theme: ThemeData(   // 设置主题颜色
           primarySwatch: Colors.yellow 
         )
       );
     }
 }

 class Home extends StatelessWidget{
   @override
     Widget build(BuildContext context) {       
       return null;
     }
 }
 