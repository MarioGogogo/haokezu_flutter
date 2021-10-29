/*
 * @Author: MarioGo
 * @Date: 2021-10-29 22:06:07
 * @LastEditTime: 2021-10-29 22:06:07
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/tab_search/filter_bar/item.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function(BuildContext) onTap;

  const Item(
      {Key? key,
      required this.title,
      required this.isActive,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var color = isActive ? Colors.green : Colors.black87;
    return GestureDetector(
      onTap: () {
        if (onTap != null) onTap(context);
      },
      child: Container(
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(color: color, fontSize: 18),
            ),
            Icon(
              Icons.arrow_drop_down,
              size: 20,
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
