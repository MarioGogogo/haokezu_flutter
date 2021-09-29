/*
 * @Author: MarioGo
 * @Date: 2021-09-29 22:52:21
 * @LastEditTime: 2021-09-29 23:15:59
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/tab_index/index_navigator.dart
 * 专有的组件和 公共的组件分开
 */
import 'package:flutter/material.dart';

import 'index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 6, bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: indexNavigatorItemList
            .map((item) => InkWell(
                  onTap: () {
                    item.onTap!(context);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        item.imageUrl,
                        width: 47.5,
                      ),
                      Text(
                        item.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
