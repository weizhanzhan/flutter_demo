import 'package:flutter/material.dart';
import '../model/post.dart';
class ViewDemo extends StatelessWidget {
 
 
  @override
  Widget build(BuildContext context) {
    return GridBuilderDemo();
  }
}
class GridBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context,int index){
    return Container(
      child: Image.network(
        posts[index].imgUrl,
        fit: BoxFit.cover
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0
      ),
    );
  }
}
//GrodViewExtent 部件
class GridViewExtentDemo extends StatelessWidget {
   List<Widget> _buildTiles(int length){
    return List.generate(length, (index){//生成一百个list
      return  Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Item$index',
            style:TextStyle(fontSize: 18.0,color: Colors.grey)
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0,//最大宽度
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,//间隔
      // scrollDirection: Axis.horizontal,//水平展示
      children: _buildTiles(100)
    );
  }
}
//GrodViewCount 部件
class GridViewCountDemo extends StatelessWidget {
   List<Widget> _buildTiles(int length){
    return List.generate(length, (index){//生成一百个list
      return  Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'Item$index',
            style:TextStyle(fontSize: 18.0,color: Colors.grey)
          ),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,//每行展示个数
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,//间隔
      // scrollDirection: Axis.horizontal,//水平展示
      children: _buildTiles(100)
    );
  }
}
//pagebuilder 部件
class PageViewBuilder extends StatelessWidget {

   Widget _pageItemBuilder(BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style:TextStyle(fontWeight: FontWeight.bold)
              ),
               Text(
                posts[index].author
              )
            ],
          ),
        )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}
//pageview 部件
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,//控制滑到一半以上直接进入下一个页面
      //reverse: true,//倒叙展示
      // scrollDirection: Axis.vertical,//控制滑动的方向
      onPageChanged: (currentPage)=>debugPrint('page改变$currentPage'),
      controller: PageController(
        initialPage: 0,//初始显示页面
        keepPage: false,//是否缓存界面
        // viewportFraction: 0.85,//显示占比
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),//居中
          child: Text(
            'ONE',
            style:TextStyle(fontSize:32.0,color: Colors.white)
          ),
        ),
         Container(
          color: Colors.yellow[900],
          alignment: Alignment(0.0, 0.0),//居中
          child: Text(
            'TWO',
            style:TextStyle(fontSize:32.0,color: Colors.white)
          ),
        ),
         Container(
          color: Colors.red[900],
          alignment: Alignment(0.0, 0.0),//居中
          child: Text(
            'THREE',
            style:TextStyle(fontSize:32.0,color: Colors.white)
          ),
        )
      ],
    );
  }
}