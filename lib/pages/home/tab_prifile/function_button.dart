/*
 * @Author: MarioGo
 * @Date: 2021-09-30 16:07:42
 * @LastEditTime: 2021-09-30 16:10:24
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /haokezu_flutter/lib/pages/home/tab_prifile/function_button.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';
import 'function_button_data.dart';
import 'function_button_widget.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 1,
      spacing: 1,
      children: list.map((item) => FunctionButtonWidget(item)).toList(),
    );
  }
}
