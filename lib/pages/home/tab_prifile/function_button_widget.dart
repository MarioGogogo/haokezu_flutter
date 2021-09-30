/*
 * @Author: MarioGo
 * @Date: 2021-09-30 16:09:32
 * @LastEditTime: 2021-09-30 16:16:37
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /haokezu_flutter/lib/pages/home/tab_prifile/function_button_widget.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */

import 'package:flutter/material.dart';

import 'function_button_data.dart';

class FunctionButtonWidget extends StatelessWidget {
  final FunctionButtonItem data;
  const FunctionButtonWidget(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (null != data.onTapHandle) {
            data.onTapHandle!(context);
          }
        },
        child: Container(
          margin: EdgeInsets.only(top: 30),
          width: MediaQuery.of(context).size.width * 0.33,
          child: Column(
            children: [Image.asset(data.imageUrl), Text(data.title)],
          ),
        ));
  }
}
