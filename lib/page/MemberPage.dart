import 'package:flutter/material.dart';

/**
 * const ListTile({
    Key key,
    this.leading,              // item 前置图标
    this.title,                // item 标题
    this.subtitle,             // item 副标题
    this.trailing,             // item 后置图标
    this.isThreeLine = false,  // item 是否三行显示
    this.dense,                // item 直观感受是整体大小
    this.contentPadding,       // item 内容内边距
    this.enabled = true,
    this.onTap,                // item onTap 点击事件
    this.onLongPress,          // item onLongPress 长按事件
    this.selected = false,     // item 是否选中状态
    })
 */

List<String> strItems = <String>[
  '图标 -> keyboard', '图标 -> print',
  '图标 -> router', '图标 -> pages',
  '图标 -> zoom_out_map', '图标 -> zoom_out',
  '图标 -> youtube_searched_for', '图标 -> wifi_tethering',
  '图标 -> wifi_lock', '图标 -> widgets',
  '图标 -> weekend', '图标 -> web',
  '图标 -> accessible', '图标 -> ac_unit',
];

List<Icon> iconItems = <Icon>[
  new Icon(Icons.keyboard), new Icon(Icons.print),
  new Icon(Icons.router), new Icon(Icons.pages),
  new Icon(Icons.zoom_out_map), new Icon(Icons.zoom_out),
  new Icon(Icons.youtube_searched_for), new Icon(Icons.wifi_tethering),
  new Icon(Icons.wifi_lock), new Icon(Icons.widgets),
  new Icon(Icons.weekend), new Icon(Icons.web),
  new Icon(Icons.accessible), new Icon(Icons.ac_unit),
];

Widget buildListData(BuildContext context, String strItem, Icon iconItem) {
  return new ListTile(
    isThreeLine: false,
    leading: iconItem,
    title: new Text(strItem),
    trailing: new Icon(Icons.keyboard_arrow_right),
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text(
              'ListViewDemo',
              style: new TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            ),
            content: new Text('您选择的item内容为:$strItem'),
          );
        },
      );
    },
  );
}


class MemberPage extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

/**
 *    最简单的listview 用法
 *    第一种   默认方式 List
 *    child: new ListView(children: divideList,),
 *    第二种   ListView.separated 方式
 *    第三种   // ListView.builder 方式
 */
class _HomePageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> _list = new List();
    for (int i = 0; i < strItems.length; i++) {
      _list.add(buildListData(context, strItems[i], iconItems[i]));
    }
    var divideList = ListTile.divideTiles(context: context, tiles: _list).toList();
    return new Scaffold(
      body: new Scrollbar(
    //    child: new ListView(children: divideList,),

//          child: ListView.separated(
//              itemBuilder: (context, item){return buildListData(context, strItems[item], iconItems[item]);},
//              separatorBuilder: (BuildContext context, int index) => new Divider(),
//              itemCount: iconItems.length),
        // ListView.builder 方式
        child: new ListView.builder(
          itemCount: iconItems.length,
          itemBuilder: (context, item) {
            return new Container(
              child: new Column(
                children: <Widget>[
                  buildListData(context, strItems[item], iconItems[item]),
                  new Divider()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
