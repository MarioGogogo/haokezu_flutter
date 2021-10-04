/*
 * @Author: MarioGo
 * @Date: 2021-10-01 10:21:24
 * @LastEditTime: 2021-10-04 11:27:52
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/room_add/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:goodhouse/widget/common_floating_button.dart';
import 'package:goodhouse/widget/common_form_item.dart';
import 'package:goodhouse/widget/common_image_pick.dart';
import 'package:goodhouse/widget/common_radio_form_item.dart';
import 'package:goodhouse/widget/common_select_form_item.dart';
import 'package:goodhouse/widget/common_title.dart';

class RoomAddPage extends StatefulWidget {
  RoomAddPage({Key? key}) : super(key: key);

  @override
  _RoomAddPageState createState() => _RoomAddPageState();
}

class _RoomAddPageState extends State<RoomAddPage> {
  // input select
  int roomType = 0;
  int floor = 0;
  int oriented = 0;
  //radio
  int rentType = 0;
  int decorationType = 0;
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
              //自定义小区
              label: '小区',
              contentBuilder: (context) {
                return Container(
                    child: GestureDetector(
                  behavior: HitTestBehavior.translucent, //解决点击空白地方无效问题
                  child: Container(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('请选择小区', style: TextStyle(fontSize: 16.0)),
                        Icon(Icons.keyboard_arrow_right),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed('search');
                  },
                ));
              }),
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
          CommonSelectFormItem(
            label: '户型',
            value: roomType,
            onChange: (val) {
              setState(() {
                roomType = val;
              });
            },
            options: ['一室', '二室', '三室', '四室'],
          ),
          CommonSelectFormItem(
            label: '楼层',
            value: floor,
            onChange: (val) {
              setState(() {
                floor = val;
              });
            },
            options: ['高楼层', '中楼层', '低楼层'],
          ),
          CommonSelectFormItem(
            label: '朝向',
            value: oriented,
            onChange: (val) {
              setState(() {
                oriented = val;
              });
            },
            options: ['东', '南', '西', '北'],
          ),
          CommonRadioFormItem(
            label: '租赁方式',
            options: ['合租', '整租'],
            value: rentType,
            onChange: (index) {
              setState(() {
                rentType = index;
              });
            },
          ),
          CommonRadioFormItem(
              label: '装修',
              options: ['精装', '简装'],
              value: decorationType,
              onChange: (index) {
                setState(() {
                  decorationType = index;
                });
              }),
          CommonTitle(title: '房屋图像'),
          CommonImagePicker(
            onChange: (List<File> value) {},
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
