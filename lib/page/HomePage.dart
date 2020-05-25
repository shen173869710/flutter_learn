import 'package:flutter/material.dart';

class HomePage extends StatefulWidget  {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  List<String>_list = List.generate(20, (index) => '原始数据${index + 1}');
  ScrollController _scrollController;
  bool isLoading = false; // 是否正在加载更多

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("列表的下拉刷新和上拉加载"),
      ),
      body: Container(
        child: ListView.builder(itemBuilder: (context, index) {
          if (index < _list.length) {
            return ListTile(
              title: Text(_list[index]),
            );
          } else {
            // 最后一项，显示加载更多布局
            return _buildLoadMoreItem();
          }
        },
          itemCount: _list.length + 1,
          controller: _scrollController,
        ),
      ),
    );
  }
}
// 加载更多布局
Widget _buildLoadMoreItem() {
  return Center(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Text("加载中..."),
    ),
  );
}
