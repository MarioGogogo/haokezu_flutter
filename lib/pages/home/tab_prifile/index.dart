/*
 * @Author: MarioGo
 * @Date: 2021-09-29 17:28:10
 * @LastEditTime: 2021-09-30 16:32:46
 * @LastEditors: MarioGo
 * @Description: 我的组件
 * @FilePath: /haokezu_flutter/lib/pages/home/tab_prifile/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/info/index.dart';

import 'advertisement.dart';
import 'function_button.dart';
import 'header.dart';

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('setting');
            },
            icon: Icon(Icons.settings),
          ),
        ],
        title: Text(
          '我的',
          // style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          TabProfileHeader(),
          FunctionButton(),
          Advertisement(),
          Info(
            showTitle: true,
          ),
        ],
      ),
    );
  }
}
