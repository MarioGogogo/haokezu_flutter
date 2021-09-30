/*
 * @Author: MarioGo
 * @Date: 2021-09-30 16:45:49
 * @LastEditTime: 2021-09-30 17:23:09
 * @LastEditors: MarioGo
 * @Description: 房屋管理
 * @FilePath: /haokezu_flutter/lib/pages/home/room_manager/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/tab_search/data_list.dart';
import 'package:goodhouse/widget/common_floating_button.dart';
import 'package:goodhouse/widget/room_list_item_widget.dart';

class RoomManagerPage extends StatelessWidget {
  const RoomManagerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: CommonFloatingActionButton(
            title: '发布房源',
            onTap: () {
              Navigator.of(context).pushNamed('roomAdd');
            },
          ),
          appBar: AppBar(
            title: Text("房屋管理"),
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "空置",
                ),
                Tab(
                  text: "已租",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                  children: dataList
                      .map((item) => RoomListItemWidget(
                            item,
                          ))
                      .toList()),
              ListView(
                  children: dataList
                      .map((item) => RoomListItemWidget(
                            item,
                          ))
                      .toList()),
            ],
          ),
        ));
  }
}
