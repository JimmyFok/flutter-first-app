import 'package:flutter/material.dart';

class Drawer_Component extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return  Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // 用于用户信息设置
              UserAccountsDrawerHeader(
                accountName: Text('JimmyFok',style:TextStyle(fontWeight: FontWeight.bold)),  // 用户名
                accountEmail: Text('huojunmin@me.com'),  // 用户邮箱
                currentAccountPicture: CircleAvatar(  // 头像图片，圆形
                  backgroundImage: NetworkImage('https://avatars2.githubusercontent.com/u/31075089?s=460&v=4'),
                ),
                decoration: BoxDecoration(  // 背景图像
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('https://avatars2.githubusercontent.com/u/31075089?s=460&v=4'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6), 
                      BlendMode.xor  // PS的混合模式一样
                    )
                  ),
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
        );
    }
}