/*
 * @Author: MarioGo
 * @Date: 2021-09-29 17:21:01
 * @LastEditTime: 2021-10-29 22:11:32
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/tab_search/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:goodhouse/widget/room_list_item_widget.dart';
import 'package:goodhouse/widget/search_bar/index.dart';

import 'data_list.dart';
import 'filter_bar/index.dart';

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
          elevation: 0,
          title: SearchBar(
            showLocation: true,
            onSearch: () {
              Navigator.of(context).pushNamed('search');
            },
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              child: FilterBar(
                onChange: (data) {},
              ),
            ),
            Expanded(
                child: ListView(
              children:
                  dataList.map((item) => RoomListItemWidget(item)).toList(),
            ))
          ],
        ));
  }
}
