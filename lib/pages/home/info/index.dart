/*
 * @Author: MarioGo
 * @Date: 2021-09-30 11:18:07
 * @LastEditTime: 2021-09-30 12:05:22
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /haokezu_flutter/lib/pages/home/info/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/info/data.dart';

import 'item_widget.dart';

class Info extends StatelessWidget {
  final bool showTitle; //是否显示标题
  final List<InfoItem> dataList; //初始化默认 list

  const Info({Key? key, this.showTitle = true, this.dataList = infoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (showTitle)
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.centerLeft,
              child: const Text(
                "最新咨询",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
              ),
            ),
          Column(
            children: dataList.map((item) => ItemWidget(item)).toList(),
          )
        ],
      ),
    );
  }
}
