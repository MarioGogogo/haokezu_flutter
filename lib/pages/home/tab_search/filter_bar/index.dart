// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers

/*
 * @Author: MarioGo
 * @Date: 2021-10-29 21:19:22
 * @LastEditTime: 2021-10-29 22:10:28
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/tab_search/filter_bar/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

import 'data.dart';
import 'item.dart';

class FilterBar extends StatefulWidget {
  final ValueChanged<FilterBarResult> onChange;

  const FilterBar({Key? key, required this.onChange}) : super(key: key);

  @override
  _FilterBarState createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  //是否激活
  bool isAreaActive = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black26)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Item(
            title: '区域',
            isActive: isAreaActive,
            onTap: _onAreaChange,
          ),
          Item(
            title: '方式',
            isActive: isAreaActive,
            onTap: _onRentTypeChange,
          ),
          Item(
            title: '租金',
            isActive: isAreaActive,
            onTap: _onPriceChange,
          ),
          Item(
            title: '筛选',
            isActive: isAreaActive,
            onTap: _onFilterChange,
          ),
        ],
      ),
    );
  }

  _onAreaChange(BuildContext p1) {}

  _onPriceChange(BuildContext p1) {}

  _onFilterChange(BuildContext p1) {}

  _onRentTypeChange(BuildContext p1) {}
}
