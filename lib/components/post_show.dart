import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post; // Post类型是post.dart引入的，而final理解为var就好
  
  PostShow({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('${post.title}'), // 这里为什么要有{}呢，因为这用的post.title而不是只是一个简单变量
          elevation: 0.0,
        ),
        body:Column(
          children:<Widget>[
            Image.network(
              post.imageUrl
            ),
            Container(
              padding: EdgeInsets.all(32.0),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('${post.title}', style: Theme.of(context).textTheme.title),
                  Text('${post.author}', style: Theme.of(context).textTheme.subhead),
                  SizedBox(height:32.0),
                  Text('${post.description}', style: Theme.of(context).textTheme.body1)
                ],
              ),
            )
          ]
        )
      ),
    );
  }
}