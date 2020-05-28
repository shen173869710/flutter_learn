import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: getColumn(),
      ),
    );
  }
}

/**
 *  Text("hello lyj 今天的天气不错，我要出去玩呀呀。但是我要学习，我爱学习。学习使我快乐，今天开始学习flutters",
    textAlign: TextAlign.center,
    style:TextStyle(
    color: Color.fromRGBO(28, 29, 120, 1),
    fontSize: 14,
    decorationStyle: TextDecorationStyle.solid//实线
    maxLines属性
    ))

    fontSize大小
    Color颜色
    fontWeight加粗之类
    fontFamily字体类别 类似于ios中fontName 关于自定义字体 这里
    decoration 装饰字体，可以配置下划线、删除线等等，一般和'decorationStyle'配置使
 */
Text getText() {
  return Text("hello lyj 今天的天气不错，我要出去玩呀呀。但是我要学习，我爱学习。学习使我快乐，今天开始学习flutters",
      textAlign: TextAlign.center,
      style:TextStyle(
          color: Color.fromRGBO(28, 29, 120, 1),
          fontSize: 14,
          decorationStyle: TextDecorationStyle.solid//实线
      ),maxLines: 1,overflow: TextOverflow.ellipsis,);
}

/**
 * bottomCenter:下部居中对齐。
    botomLeft: 下部左对齐。
    bottomRight：下部右对齐。
    center：纵横双向居中对齐。
    centerLeft：纵向居中横向居左对齐。
    centerRight：纵向居中横向居右对齐。
    topLeft：顶部左侧对齐。
    topCenter：顶部居中对齐。
    topRight： 顶部居左对齐。
    padding内编剧
 */
Container getContainer() {
  return  Container(
    child: Text(
      "hello lyj 今天的天气不错，我要出去玩呀呀。但是我要学习，我爱学习。学习使我快乐，今天开始学习flutters",
      textAlign: TextAlign.center,
      // maxLines: 1,
      // overflow: TextOverflow.ellipsis,
      style:TextStyle(
          color: Color.fromRGBO(28, 29, 120, 1),
          fontSize: 14,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.solid//实线
      ) ,
    ),
    alignment: Alignment.center,
    width: 500,
    height: 100,
    // color: Colors.red,
    // padding: const EdgeInsets.all(10.0),
    padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),//内编剧
    margin: const EdgeInsets.all(10.0),//外边距
    decoration: BoxDecoration(
        gradient: const LinearGradient(
            colors: [Colors.lightBlue,Colors.greenAccent,Colors.purple]
        ),
        border: Border.all(color: Colors.red,width: 2),
        borderRadius: BorderRadius.circular(50)
    ),
  );
}

Image getImage() {
  return Image.network(
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555747523962&di=a1c0b1b4f8561a79e5dcb4a7409b022c&imgtype=0&src=http%3A%2F%2Fp0.ssl.qhimg.com%2Ft01c3f5bf72e7d1ac67.png",
    scale: 1.0,
    fit: BoxFit.contain,
    color: Colors.greenAccent,
    colorBlendMode: BlendMode.darken,
    repeat: ImageRepeat.repeat,
  );
}

GridView getGridView() {
  return GridView(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 5.0,
        childAspectRatio: 0.7
    ),
    children: <Widget>[
      Container(
        color: Colors.red,
        child: Text(
          '我是李雁军1',
          textAlign: TextAlign.center,),
        alignment: Alignment.center,
      ),
      Container(
        color: Colors.red,
        child: Text('我是李雁军'),
      ),
      Container(
        color: Colors.red,
        child: Text('我是李雁军'),
      ),
      Container(
        color: Colors.yellow,
        child: Text('我是李雁军'),
      ),
      Container(
        color: Colors.yellow,
        child: Text('我是李雁军'),
      ),
      Container(
        color: Colors.yellow,
        child: Text('我是李雁军'),
      ),
      Container(
        color: Colors.blue,
        child: Text('我在中国'),
      )
    ],
  );
}


Row getRow() {
  return  Row(
    children: <Widget>[
      Expanded(
          child: RaisedButton(
              onPressed: () {
                print('点击');
              },
              color: Colors.redAccent,
              child:  Text('红色按钮'))),
      Expanded(
          child: RaisedButton(
              onPressed: () {
                print('点击');
              },
              color: Colors.yellow,
              child:  Text('黄色按钮'))),
      Expanded(
          child: RaisedButton(
              onPressed: () {
                print('点击');
              },
              color: Colors.blueAccent,
              child:  Text('蓝色按钮'))),
      Expanded(
          child: RaisedButton(
              onPressed: () {
                print('点击');
              },
              color: Colors.greenAccent,
              child: new Text('绿色按钮')))
    ],
  );
}



Column getColumn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start, //副轴
    mainAxisAlignment: MainAxisAlignment.center, //主轴
    children: <Widget>[
      Container(
          color: Colors.redAccent,
          height: 60,
          width: 100,
          child: Text('我是lyj，哈哈哈')),
      Container(color: Colors.blue, child: Text('这里是垂直布局'),
        width: 300,
      ),
      Container(color: Colors.yellowAccent, child: Text('今天天气有点小雨，要在家里学习'),
          width: 300
      )
    ],
  );
}
//第一列按照大小 剩下的平均
class MyRow1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        RaisedButton(
            onPressed: () {
              print('点击');
            },
            color: Colors.redAccent,
            child:  Text('红色按钮hahhahh')),
        Expanded(
            child: RaisedButton(
                onPressed: () {
                  print('点击');
                },
                color: Colors.yellow,
                child:  Text('黄色按钮'))),
        Expanded(
            child: RaisedButton(
                onPressed: () {
                  print('点击');
                },
                color: Colors.blueAccent,
                child:  Text('蓝色按钮'))),
        Expanded(
            child: RaisedButton(
                onPressed: () {
                  print('点击');
                },
                color: Colors.pink,
                child:  Text('红色按钮')))

      ],
    );
  }
}

