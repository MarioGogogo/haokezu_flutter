/*
 * @Author: MarioGo
 * @Date: 2021-10-01 10:21:24
 * @LastEditTime: 2021-10-01 10:33:50
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/room_add/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';
import 'package:goodhouse/widget/common_floating_button.dart';
import 'package:goodhouse/widget/common_form_item.dart';
import 'package:goodhouse/widget/common_title.dart';

class RoomAddPage extends StatefulWidget {
  RoomAddPage({Key? key}) : super(key: key);

  @override
  _RoomAddPageState createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("房源发布"),
      ),
      body: ListView(
        children: [
          CommonTitle(title: '房源信息'),
          CommonFormItem(
            label: '租金',
            hitText: '请输入租金',
            suffixText: '元/月',
            controller: TextEditingController(),
          ),
          CommonFormItem(
            label: '大小',
            hitText: '请输入房屋大小',
            suffixText: '平方米',
            controller: TextEditingController(),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CommonFloatingActionButton(
        title: '提交',
        onTap: () {},
      ),
    );
  }
}
