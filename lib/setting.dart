/*
 * @Author: MarioGo
 * @Date: 2021-09-30 16:27:57
 * @LastEditTime: 2021-09-30 16:29:57
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /haokezu_flutter/lib/setting.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:goodhouse/utils/common_toast.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () {
              CommonToast.showToast('已经退出登录');
            },
            child: Text(
              '退出登录',
              style: TextStyle(),
            ),
          )
        ],
      ),
    );
  }
}
