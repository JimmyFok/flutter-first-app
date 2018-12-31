import 'package:flutter/material.dart'; // 引入material的设计风格（Google的，详情可去material.io了解）
// import 'components/Hello_Component.dart';
import 'components/List_Component.dart';

// void表示不返回值，是后端语言常用，在函数前就设定好函数返回值的类型
void main() => runApp(App()); // 需要实例化，因为实例化就会build()

// 创建小部件。小部件需要有数据的就继承StatefulWidget，不需要的就继承StatelessWidget。从字面意思也理解了
class App extends StatelessWidget {
  @override // 表示这个方法是覆盖父类build的，因为这行以下都是输入build再tab创建的
  Widget build(BuildContext context) { // 返回类型是Widget 方法名build

    return MaterialApp(
      debugShowCheckedModeBanner: false, // 界面debug没了
      home: Home(), //List_Component(), 
      theme: ThemeData( // 设置主题颜色
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),   // 高梁颜色
        splashColor: Colors.white70   // 水波纹颜色
      )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // 左边，用IconButton来弄
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: () => debugPrint('导航按钮被点击。'),
          // ),  
          
          // 这里因为是手动加的，所以没有自动加入抽屉的那个图标的效果，所以把它注销就有了

          // 中间标题
          title: Text('jimmyFok'),
          // 右边actions
          actions: < Widget > [ // 这里是数组所以可以是一组
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('搜索按钮被点击。'),
            ),
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('搜索按钮被点击。'),
            )
          ],
          elevation: 0.0,
          bottom: TabBar(  // 这里开始就tab组件了，问题来了，对应的tab的内容写哪里，就在body处写
            unselectedLabelColor: Colors.black38,  // 设置没选择的颜色
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,  // 设置长度于tab文本一样长
            indicatorWeight: 4.0,    // 设置厚度
            tabs: <Widget>[ 
              Tab(icon: Icon(Icons.local_florist)),  
              Tab(icon: Icon(Icons.camera)),
              Tab(icon: Icon(Icons.credit_card)),              
            ],  
          ),
        ),
        body: TabBarView(  // 与TabBar一一对应就可以
          children: <Widget>[
            Icon(Icons.local_florist, size: 128.0, color: Colors.black12), // black12是半透明度为12%
            Icon(Icons.camera, size: 128.0, color: Colors.black12),
            Icon(Icons.credit_card, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // 抽屉头部
              DrawerHeader(
                child: Text('header'.toUpperCase()),
                decoration: BoxDecoration(  // 盒子装饰
                  color: Colors.grey[100],  // 
                ),
              ),
              ListTile(
                title: Text('信息',textAlign: TextAlign.right,),
                trailing: Icon(Icons.message, color:Colors.black12, size:22.0),  // 这里是致右的部分，左边用leading
                onTap: () => Navigator.pop(context), // 这里是点击返回到context层，来达到关闭抽屉效果
              ),
              ListTile(
                title: Text('收藏',textAlign: TextAlign.right,),
                trailing: Icon(Icons.favorite, color:Colors.black12, size:22.0),  // 这里是致右的部分
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('设置',textAlign: TextAlign.right,),
                trailing: Icon(Icons.settings, color:Colors.black12, size:22.0),  // 这里是致右的部分
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
        endDrawer: Text('这是右边抽屉'),  // 右抽屉
      ) 
    );
  }
}