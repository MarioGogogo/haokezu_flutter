// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

/*
 * @Author: MarioGo
 * @Date: 2021-10-04 17:05:16
 * @LastEditTime: 2021-10-29 20:11:14
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/widget/room_appliance.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */

import 'package:flutter/material.dart';

import '../config.dart';
import 'common_check_button.dart';

// 每一个Item类
class RoomApplianceItem {
  final String title;
  final int iconPoint;
  final bool isChecked;

  //构造函数
  const RoomApplianceItem(this.title, this.iconPoint, this.isChecked);
}

// 这里是模拟数据
const List<RoomApplianceItem> _dataList = [
  RoomApplianceItem('衣柜', 0xe918, false),
  RoomApplianceItem('洗衣机', 0xe917, false),
  RoomApplianceItem('空调', 0xe90d, false),
  RoomApplianceItem('天然气', 0xe90f, false),
  RoomApplianceItem('冰箱', 0xe907, false),
  RoomApplianceItem('暖气', 0xe910, false),
  RoomApplianceItem('电视', 0xe908, false),
  RoomApplianceItem('热水器', 0xe912, false),
  RoomApplianceItem('宽带', 0xe90e, false),
  RoomApplianceItem('沙发', 0xe913, false),
];

class RoomAppliance extends StatefulWidget {
  //组件参数
  final ValueChanged<List<RoomApplianceItem>> onChange;
  RoomAppliance({Key? key, required this.onChange}) : super(key: key);

  @override
  _RoomApplianceState createState() => _RoomApplianceState();
}

class _RoomApplianceState extends State<RoomAppliance> {
  List<RoomApplianceItem> list = _dataList;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Wrap(
            runSpacing: 30.0,
            children: list
                .map((item) => GestureDetector(
                      onTap: () {
                        //自身组件自改变
                        setState(() {
                          list = list
                              .map((innerItem) => innerItem == item
                                  ? RoomApplianceItem(item.title,
                                      item.iconPoint, !item.isChecked)
                                  : innerItem)
                              .toList();
                        });
                        //  同时通知父级
                        if (null != widget.onChange) {
                          widget.onChange(list);
                        }
                      },
                      behavior: HitTestBehavior.translucent,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 5,
                        child: Column(children: <Widget>[
                          Icon(
                              //字体图标的使用
                              IconData(item.iconPoint,
                                  fontFamily: Config.CommonIcon),
                              size: 40.0),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(item.title),
                          ),
                          CommonCheckButton(item.isChecked)
                        ]),
                      ),
                    ))
                .toList()),
      ),
    );
  }
}

// 房屋配置
class RoomApplianceList extends StatefulWidget {
  final List<String> list;

  const RoomApplianceList({Key? key, required this.list}) : super(key: key);

  @override
  _RoomApplianceListState createState() => _RoomApplianceListState();
}

class _RoomApplianceListState extends State<RoomApplianceList> {
  @override
  Widget build(BuildContext context) {
    // 从datalist中找到对应数据
    var showList =
        _dataList.where((item) => widget.list.contains(item.title)).toList();

    if (showList.isEmpty) {
      return Container(
        padding: EdgeInsets.only(left: 10),
        child: Text('暂无房源配置信息'),
      );
    }
    return Container(
      child: Wrap(
        runSpacing: 30.0,
        children: showList
            .map((item) => Container(
                  width: MediaQuery.of(context).size.width / 5,
                  child: Column(children: <Widget>[
                    Icon(
                        //字体图标的使用
                        IconData(item.iconPoint, fontFamily: Config.CommonIcon),
                        size: 40.0),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(item.title),
                    ),
                    // CommonCheckButton(item.isChecked)
                  ]),
                ))
            .toList(),
      ),
    );
  }
}
