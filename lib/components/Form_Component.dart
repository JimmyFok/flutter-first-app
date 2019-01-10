import 'package:flutter/material.dart';

class Form_Component extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // body: ThemeDemo(),
        body: Theme(
          // 自定义主题的颜色（覆盖了ThemeDemo的主题）
          data: Theme.of(context).copyWith(  // 复制主题，这样处理primaryColor会被覆盖，其他都会保留
            primaryColor: Colors.black,  // 因为ThemeDemo用的不再是primaryColor，所以显示那里是显示accentColor的值
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[                
                TextFieldDemo()
              ],
            )
          )
        )
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  // 文本控制器
  final textEditingController = TextEditingController();

  @override
    void dispose() { // dispose的意思是安排，这里的函数相当于dispose方法继承于父类dispose，再自身扩展
      textEditingController.dispose();
      super.dispose();
    }
  
  // 初始数据
  @override
    void initState() {
      super.initState();
      textEditingController.text = '我是初始值';  // 为什么我这里无效
      textEditingController.addListener(
        (){
          debugPrint('输入：${textEditingController.text}');
        }
      );
    }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: TextField(
        //  onChanged: (value){
        //    debugPrint('输入内容: $value');
        //  },
         onSubmitted: (value){
           debugPrint('提交内容: $value');
         },
         decoration: InputDecoration(
           icon: Icon(Icons.people),
           labelText: '用户名',
           hintText: '请输入用户名',
           border: InputBorder.none,
          //  border: OutlineInputBorder(),
           filled: true,

         ),
       ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).accentColor, // 这是继承了App的原始颜色
    );
  }
}