import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_demo.dart';
import './demo/list_view.dart';
import './demo/basic_demo.dart';
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//去掉debug标签
      home:Home(),
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),//按钮按下去的高亮颜色
        splashColor: Colors.white70,//水波纹的效果
      ),
    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(title: Text('zhanwei'),
          elevation: 0.0,//appbar底部阴影
          centerTitle: true,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigration',
          //   onPressed: (){    
          //     debugPrint('Navigration button is press');
          //   },
          // ),
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,//指示器的长度 和标签长度一样长
            indicatorWeight: 2.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_bike),)
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Navigration',
              onPressed: (){
                debugPrint('search button is press');
              },
            ),
          ],
        ),
        //body:ListViewDemo()
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),//Icon(Icons.local_florist,size: 128.0,color: Colors.black12,),
            Icon(Icons.local_florist,size: 128.0,color: Colors.black12,)
          ],
        ),
        bottomNavigationBar:BottomNavigationDemo(), 
        drawer:DrawerDemo(),
      )
    );
  }
}

