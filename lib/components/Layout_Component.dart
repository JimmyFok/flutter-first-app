import 'package:flutter/material.dart';

class Layout_Component extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(  // 就是跟flexbox类似，这里就是设定主轴方向的
        mainAxisSize: MainAxisSize.min,  // 这个没搞懂是什么, 可能跟flex-grow类似
        mainAxisAlignment: MainAxisAlignment.start,  // 类似align-items

        crossAxisAlignment: CrossAxisAlignment.center,  // justify-content        

        children: <Widget>[
          // SizedBox 可以做间隔，用来设定大小的，Container暂时没发现可以
          SizedBox(
            width: 300.0,
            height: 200.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(Icons.ac_unit,color:Colors.white,size:32.0)
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
            width: 100.0,
            height: 100.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 54, 255, 1.0),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Icon(Icons.ac_unit,color:Colors.white,size:32.0)
            ),
          )
        ],
      ),
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

