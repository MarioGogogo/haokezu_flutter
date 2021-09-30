/*
 * @Author: MarioGo
 * @Date: 2021-09-29 17:33:55
 * @LastEditTime: 2021-09-30 11:38:57
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /haokezu_flutter/lib/pages/home/tab_index/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/info/index.dart';
import 'package:goodhouse/widget/common_swiper.dart';

import 'index_navigator.dart';
import 'index_recommend.dart';

class TabIndex extends StatefulWidget {
  const TabIndex({Key? key}) : super(key: key);

  @override
  _TabIndexState createState() => _TabIndexState();
}

class _TabIndexState extends State<TabIndex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabIndex组件"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          CommonSwiper(),
          IndexNavigator(),
          IndexRecomment(),
          Info(),
        ],
      ),
    );
  }
}
