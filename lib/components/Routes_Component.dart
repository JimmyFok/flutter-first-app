import 'package:flutter/material.dart';

class Routes_Component extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Home'),
                onPressed: null,
              ),
              FlatButton(
                child: Text('About'),
                onPressed: (){
                  // // 正式开始用路由了(这里是对Stack进行操作，但无名字的)
                  // Navigator.of(context).push(
                  //   // 将新的路由推到Stack里面
                  //   MaterialPageRoute(
                  //     builder: (BuildContext context) => Page(title:'About'), // 这样就相当于导航到一个About的页面
                  //   )
                  // );

                  // 改为这样(改为main里面设定好路由路径，这里设定点击按压跳转到对应路由路径)
                  Navigator.pushNamed(context, '/about');  // 效果与上方一样了
                },
              )
            ],
          )
        ),
      );  // Scaffold是脚手架的意思
    }
}

class Page extends StatelessWidget {
  final String title; // 定义一个title值
  
  Page({
    this.title  // 将定义的title作为在Page部件内容
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // 将title作为title
        elevation: 0.0,
      ),
      // 新页面中返回的功能跟下面创造的功能一样，都是执行pop方法
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}