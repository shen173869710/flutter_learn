import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CartPage.dart';
import 'HomePage.dart';
import 'MemberPage.dart';
import 'SearchPage.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _IndexPageState();
  }
}

final List<BottomNavigationBarItem> bottomBar = <BottomNavigationBarItem>[
  BottomNavigationBarItem(backgroundColor:Colors.blue,icon: Icon(CupertinoIcons.home), title: Text("小铺")),
  BottomNavigationBarItem(backgroundColor:Colors.blue,icon: Icon(CupertinoIcons.search), title: Text("发现")),
  BottomNavigationBarItem(backgroundColor:Colors.blue,icon: Icon(CupertinoIcons.shopping_cart), title: Text("购物车")),
  BottomNavigationBarItem(backgroundColor:Colors.blue,icon: Icon(CupertinoIcons.profile_circled), title: Text("我的"))
];


final List<Widget> pages = <Widget>[
  HomePage(),
  SearchPage(),
  CartPage(),
  MemberPage()
];

class _IndexPageState extends State<IndexPage> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("底部导航栏"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomBar,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          _changePage(index);
        },
      ),
      body: pages[currentIndex],
    );
  }

  /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }

}