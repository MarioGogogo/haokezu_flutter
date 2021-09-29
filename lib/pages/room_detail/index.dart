/*
 * @Author: MarioGo
 * @Date: 2021-09-29 15:42:31
 * @LastEditTime: 2021-09-29 15:51:54
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/room_detail/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String? roomId;

  const RoomDetailPage({Key? key, this.roomId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("详情带ID,$roomId")),
        body: Column(
          children: [Text("详情带参数访问")],
        ));
  }
}
