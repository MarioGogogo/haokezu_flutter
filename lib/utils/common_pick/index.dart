/*
 * @Author: MarioGo
 * @Date: 2021-10-04 10:48:59
 * @LastEditTime: 2021-10-04 11:06:22
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/utils/common_pick/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CommonPicker {
  static showPicker({
    required BuildContext context, //上下文
    required List<String> options, //内容
    required int value, //默认值
    double height = 300, //高度
  }) {
    return showCupertinoModalPopup<int>(
        context: context,
        builder: (BuildContext context) {
          var buttonTextStyle =
              TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
          var controller = FixedExtentScrollController(initialItem: value);
          return Container(
            height: height,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('取消', style: buttonTextStyle),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(2);
                        },
                        child: Text('确定', style: buttonTextStyle),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: CupertinoPicker(
                    scrollController: controller,
                    itemExtent: 32.0,
                    onSelectedItemChanged: (val) {},
                    children: options.map((item) => Text(item)).toList(),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
