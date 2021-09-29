/*
 * @Author: MarioGo
 * @Date: 2021-09-29 17:28:10
 * @LastEditTime: 2021-09-29 17:28:11
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/tab_prifile/index.js
 * 可以输入预定的版权声明、个性签名、空行等
 */
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class TabProfile extends StatefulWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  _TabProfileState createState() => _TabProfileState();
}

class _TabProfileState extends State<TabProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabProfile组件"),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(top: 8.0)),
          Text("TabProfile组件"),
        ],
      ),
    );
  }
}
