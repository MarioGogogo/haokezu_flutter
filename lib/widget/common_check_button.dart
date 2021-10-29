// ignore_for_file: prefer_const_constructors

/*
 * @Author: MarioGo
 * @Date: 2021-10-04 17:17:39
 * @LastEditTime: 2021-10-29 19:38:50
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/widget/common_check_button.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class CommonCheckButton extends StatelessWidget {
  final bool isChecked;

  const CommonCheckButton(
    this.isChecked, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isChecked
        ? Icon(
            Icons.check_circle,
            color: Colors.blue,
          )
        : Icon(
            Icons.radio_button_unchecked,
            color: Colors.blue,
          );
  }
}
