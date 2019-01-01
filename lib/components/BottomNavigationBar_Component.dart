import 'package:flutter/material.dart';

class BottomNavigationBar_Component extends StatefulWidget{  // 必须createState
  
  // state方面
  @override
    State<StatefulWidget> createState() {
      return _BottomNavigationBarState();  // 返回这个
    }
}

class  _BottomNavigationBarState extends State<BottomNavigationBar_Component>{

  int _currentIndex = 0; // 初始化选中的索引

  void _onTapHandler(int index){
    setState((){
      _currentIndex = index;
    });
  }

  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // 让底部菜单栏独立，不受theme影响
          fixedColor: Colors.purple,
          currentIndex: _currentIndex, // 设置激活是索引
          onTap: _onTapHandler,  // 这是设置点击菜单来按钮的回调函数
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              title: Text('左边')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.usb),
              title: Text('中间')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              title: Text('相机')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.usb),
              title: Text('中间')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more),
              title: Text('右边')
            )
          ]
        );
    }
}

