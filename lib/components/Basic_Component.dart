import 'package:flutter/material.dart';

class Basic_Component extends StatelessWidget{
  /*
   * [Text] 文字及文字样式
   */

  // // 定义文字样式变量
  // final TextStyle _textStyle = TextStyle(
  //   fontSize: 20.0
  // );
  // // 定义歌手
  // final _author = 'Maroon 5';
  // final _feat = 'Cardi B';
  // final _song = "Girls Like You";

  // @override
  //   Widget build(BuildContext context) {
  //     return Text(
  //       "Spent 24 hours I need a girl like you —— $_song(feat. $_feat), $_author", // 参数1<String>: 显示的文字内容，居然不支持ES6的``。
  //       textAlign: TextAlign.center,
  //       style: _textStyle,
  //       maxLines: 2,  // 最大行数
  //       overflow: TextOverflow.ellipsis,
  //     );
  //   }

  /*
   * [RichText] 行内及行内样式，就是行内多个文字样式混合的
   */

  @override
    Widget build(BuildContext context) {
      return RichText(
        text: TextSpan(  // 需要显示的文字及文字样式
            text: 'JimmyFok',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            ),
            children: [
              TextSpan(
                text: 'Home',
                style: TextStyle(
                  fontSize: 60.0,
                )
              )
            ]
        ),
      );
    }
}