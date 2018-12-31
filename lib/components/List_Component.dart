import 'package:flutter/material.dart';
import '../model/post.dart';

class List_Component extends StatelessWidget{
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
        // TODO: implement build
        return Scaffold(   // 主要是标题之类的部件，算是关于app结构的组件
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