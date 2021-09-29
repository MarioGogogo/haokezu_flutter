/*
 * @Author: MarioGo
 * @Date: 2021-09-29 17:21:01
 * @LastEditTime: 2021-09-29 17:21:02
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/tab_search/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class IndexSearch extends StatefulWidget {
  const IndexSearch({Key? key}) : super(key: key);

  @override
  _IndexSearchState createState() => _IndexSearchState();
}

class _IndexSearchState extends State<IndexSearch> {
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
          Text("搜索组件"),
        ],
      ),
    );
  }
}
