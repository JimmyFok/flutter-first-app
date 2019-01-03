import 'package:flutter/material.dart';

class Layout_Component extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[ // 这个今天请教了同事，直接告诉他这个是范型，就是严格的JAVA的强类型时需要一个站位变量一样的东西，而不需要强制设定类型，而在编译时才确定的类型。
                          // 所以这里意思应该是代表这里放的都是Widget，Widget就是为了让我们了解对应的数据类型的。
        IconBadge(Icons.access_time, size:80.0)
      ],
    ); 
  }
}

class IconBadge extends StatelessWidget{
  final IconData icon;  // 创造一个叫icon的IconData类型的变量
  final double size;  // size，浮点数变量，调用时可以用this.size

  // 这里看着就像是传参的方式，貌似就是默认值，该对象实例化的方式
  IconBadge(this.icon,{
    this.size = 32.0  // 这里相当于设置了默认值
  });

  @override
    Widget build(BuildContext context) {      
      return Container(
        child: Icon(icon, size: size, color: Colors.white),  // 这里因为之前一直给icon设定了size所以可以直接用size的值，Icon作用域里了，所以直接size就好
        width: size + 60 ,
        height: size + 60 ,
        color: Color.fromRGBO(3, 54, 255, 1.0)  // 容器颜色
      );
    }
}

