/*
 * @Author: MarioGo
 * @Date: 2021-09-29 14:49:40
 * @LastEditTime: 2021-09-29 17:35:19
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */

import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/tab_index/index.dart';
import 'package:goodhouse/pages/home/tab_info/index.dart';
import 'package:goodhouse/pages/home/tab_prifile/index.dart';
import 'package:goodhouse/pages/home/tab_search/index.dart';

//tab内容区域
List<Widget> tabViewList = [
  const TabIndex(),
  const IndexSearch(),
  const TabInfo(),
  const TabProfile(),
];

List<BottomNavigationBarItem> barItemList = [
  const BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
  const BottomNavigationBarItem(icon: Icon(Icons.search), label: "搜索"),
  const BottomNavigationBarItem(icon: Icon(Icons.info), label: "咨询"),
  const BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "我的")
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //当前指标
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
