import 'package:flutter/material.dart';
import '../model/post.dart';

class List_Component extends StatelessWidget {
  // Widget除了build以外还有listItemBuilder
  Widget _listItemBuilder(BuildContext context, int index) {
    // return Text(posts[index].title);
    return Container(
      // Container组件
      color: Colors.white,
      margin: EdgeInsets.all(8.0), // 设置margin值
      child: Stack(
        children: < Widget > [
          Column(
            children: < Widget > [
              AspectRatio( // 这是比例
                aspectRatio: 16/9, 
                child: Image.network(posts[index].imageUrl, 
                    fit: BoxFit.cover
                  ),
              ),
              // Image.network(posts[index].imageUrl),
              SizedBox(height: 16.0),
              Text(
                posts[index].title,
                style: Theme.of(context).textTheme.title,
              ),
              Text(
                posts[index].author,
                style: Theme.of(context).textTheme.subhead,
              ),
              SizedBox(height: 16.0),
            ],
          ),
          // 定位填充
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                // 溅墨效果
                splashColor: Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: (){
                  debugPrint('Tap'); // 类似console.log
                },
              ))),
        ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // 主要是标题之类的部件，算是关于app结构的组件
      //  appBar: AppBar(
      //    title: Text('JIMMYFOK'),
      //    elevation: 1.0,  // 阴影
      //  ),
      body: ListView.builder(
        // 这里是ListView的创建
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ));
  }
}