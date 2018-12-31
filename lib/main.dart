import 'package:flutter/material.dart'; // 引入material的设计风格（Google的，详情可去material.io了解）
import 'model/post.dart';   // 引入了post.dart后就可以直接用里面的posts

// void表示不返回值，是后端语言常用，在函数前就设定好函数返回值的类型
 void main() => runApp( App() ); // 需要实例化，因为实例化就会build()

// 创建小部件。小部件需要有数据的就继承StatefulWidget，不需要的就继承StatelessWidget。从字面意思也理解了
 class App extends StatelessWidget{
   @override   // 表示这个方法是覆盖父类build的，因为这行以下都是输入build再tab创建的
     Widget build(BuildContext context) {  // 返回类型是Widget 方法名build
       
       return MaterialApp(
         home: Home(), 
         theme: ThemeData(   // 设置主题颜色
           primarySwatch: Colors.yellow 
         )
       );
     }
 }

 class Home extends StatelessWidget{
   // Widget除了build以外还有listItemBuilder
   Widget _listItemBuilder(BuildContext context, int index){
      // return Text(posts[index].title);
      return Container( // Container组件
        color: Colors.white,
        margin: EdgeInsets.all(8.0), // 设置margin值
        child: Column(
          children: <Widget>[
            Image.network(posts[index].imageUrl),
            SizedBox(height: 16.0),
            Text(
              posts[index].title,
              style: Theme.of(context).textTheme.title,              
            ),
            Text(
              posts[index].author,
              style: Theme.of(context).textTheme.subhead,
            ),
            SizedBox(height:16.0),
          ],
        )
      );
   }

   @override
     Widget build(BuildContext context) {       
       return Scaffold(   // 主要是标题之类的部件
           appBar: AppBar(
             title: Text('JIMMYFOK'),
             elevation: 1.0,  // 阴影
           ),
           body: ListView.builder(  // 这里是ListView的创建
             itemCount: posts.length,
             itemBuilder: _listItemBuilder,
           )
         );
     }
 }

 class Hello extends StatelessWidget{
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