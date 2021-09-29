/*
 * @Author: MarioGo
 * @Date: 2021-09-29 17:03:37
 * @LastEditTime: 2021-09-29 17:06:16
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/tab_info/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class TabInfo extends StatefulWidget {
  const TabInfo({Key? key}) : super(key: key);

  @override
  _TabInfoState createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("搜索组件"),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 8.0)),
          Text("info组件"),
        ],
      ),
    );
  }
}
