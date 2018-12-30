import 'package:flutter/material.dart'; // 引入material的设计风格（Google的，详情可去material.io了解）

 void main(){   // void表示不返回值，是后端语言常用，在函数前就设定好函数返回值的类型
    runApp( App() );
 }

// 创建小部件。小部件需要有数据的就继承StatefulWidget，不需要的就继承StatelessWidget。从字面意思也理解了
 class App extends StatelessWidget{
   @override   // 表示这个方法是覆盖父类build的，因为这行以下都是输入build再tab创建的
     Widget build(BuildContext context) {  // 返回类型是Widget 方法名build
       // TODO: implement build
       return Center(  // Center widget
          child: Text(  // 文字widget，作为Center的子widget
             'Hello',  // 文字内容
             textDirection: TextDirection.ltr,  // 文字方向，左到右
          ),
        );
     }
 }