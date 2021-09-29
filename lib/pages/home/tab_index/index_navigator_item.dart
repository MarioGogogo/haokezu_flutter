/*
 * @Author: MarioGo
 * @Date: 2021-09-29 22:55:26
 * @LastEditTime: 2021-09-29 23:09:33
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/tab_index/index_navigator_item.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */

import 'package:flutter/material.dart';

//构造函数
class IndexNavigatorItem {
  final String title;
  final String imageUrl;
  final Function(BuildContext context)? onTap;

  IndexNavigatorItem(this.title, this.imageUrl, this.onTap);
}

List<IndexNavigatorItem> indexNavigatorItemList = [
  IndexNavigatorItem('整租', 'static/images/home_index_navigator_total.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('合租', 'static/images/home_index_navigator_share.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('地图找房', 'static/images/home_index_navigator_map.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('去出租', 'static/images/home_index_navigator_rent.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
];
