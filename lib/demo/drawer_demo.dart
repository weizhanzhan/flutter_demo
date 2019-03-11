import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('zhanwei'),
                accountEmail: Text('12343432@qq.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://i2.hdslb.com/bfs/face/5ad89eb67655b4c2836f0eae710f29a9af1d26b8.jpg@72w_72h.webp'),
                ),
                decoration: BoxDecoration(
                 // color: Colors.red ,//背景颜色
                 image: DecorationImage(//背景图片
                   image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1552292130655&di=55ec0f8bd41e43f795cc5d2fbe14f43b&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fb81a8892399b5f32ef52d9338e96ec50b6ac788ae4c8-YOSXbB_fw658'),
                   fit: BoxFit.cover,//铺满方式
                   colorFilter: ColorFilter.mode(//颜色混合
                     Colors.pinkAccent,
                     BlendMode.hardLight
                      )
                 ), //背景图片
                ),
              ),
              ListTile(
                title: Text(
                  'Message',
                  textAlign:TextAlign.right
                ),
                onTap: (){
                  Navigator.pop(context);
                },
                trailing: Icon(Icons.message,color: Colors.black12,size: 22.0,),
                //leading: Icon(Icons.message,color: Colors.black12,size: 22.0,),//这个实在前面显示小图标，tralling实在后面显示图标
              ),
              ListTile(
                title: Text(
                  'Settting',
                  textAlign:TextAlign.right
                ),
                trailing: Icon(Icons.settings,color: Colors.black12,size: 22.0,),
                //leading: Icon(Icons.message,color: Colors.black12,size: 22.0,),//这个实在前面显示小图标，tralling实在后面显示图标
              ),
              ListTile(
                title: Text(
                  'Info',
                  textAlign:TextAlign.right
                ),
                trailing: Icon(Icons.info,color: Colors.black12,size: 22.0,),
                //leading: Icon(Icons.message,color: Colors.black12,size: 22.0,),//这个实在前面显示小图标，tralling实在后面显示图标
              )
            ],
          ),
        );
  }
}