import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {


    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,//主轴对齐方式
        children: <Widget>[
          Container(
            child: Icon(Icons.pool,size: 32.0,color: Colors.white,),
        //    color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
             // decoration： 背景装饰
             //  decoration可以设置边框、背景色、背景图片、圆角等属性，非常实用。对于transform这个属性，一般有过其他平台开发经验的，都大致了解，这种变换，一般不是变换的实际位置，而是变换的绘制效果，
             //  也就是说它的点击以及尺寸、间距等都是按照未变换前的。 
             //  但需要注意的是 deoration和 color： 背景颜色不能共存，二者同时只能有一个

              color: Color.fromRGBO(3, 54, 255, 1.0),
              border:Border.all(    
                color: Colors.indigoAccent[100],
                width: 3.0,
                style: BorderStyle.solid         
              ),
            //  borderRadius: BorderRadius.circular(16.0),
              boxShadow: [//阴影
                BoxShadow(
                  offset:Offset(0.0,16.0),
                  color:Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 25.0,//模糊程度
                  spreadRadius: -9.0
                )
              ],
              shape: BoxShape.circle,//圆形形状不能设置borderRadius ，注释掉
              gradient: RadialGradient(//镜像渐变
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0)
                ]
              )
            ),
          )
        ],
      ),
    );
  }
}


class RichTextDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  RichText(
      text: TextSpan(
        text: 'zhanwei',
        style: TextStyle(
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
          color: Colors.purpleAccent
        ),
        children: [
          TextSpan(
            text: '.club',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey
            )
          )
        ]
      )
    );
  }
}


class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  final String _author = 'Flutter';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$_author是中国最大的Flutter开发者交流学习平台,致力于打造Flutter开发中文社区。在这里能轻松找到代码实例、项目案例、并有专人提供最新文档翻译。',
        textAlign: TextAlign.left,
        style: _textStyle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis, //超过maxline的时候 用省略号展示
      ),
    );
  }
}