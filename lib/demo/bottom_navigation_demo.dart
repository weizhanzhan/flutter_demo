import 'package:flutter/material.dart';
class BottomNavigationDemo extends StatefulWidget {

  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {

    int _currentIndex = 0;
  void _onTapHandler (int index){
    setState((){ //动态组件才会有
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,//当导航栏的个数大于等于四个 该type会自动改变，所以要手动加上设置type
          fixedColor: Colors.black,
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('explore')
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('history')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('list')
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('mine')
            ),
          ]
        );
  }
}