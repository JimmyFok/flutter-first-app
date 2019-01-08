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
          child: ThemeDemo()
        )
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