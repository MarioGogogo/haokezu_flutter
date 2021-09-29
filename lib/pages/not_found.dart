/*
 * @Author: MarioGo
 * @Date: 2021-09-29 15:35:58
 * @LastEditTime: 2021-09-29 15:35:58
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/not_found.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('404'),
      ),
      body: const Center(
        child: Text('您访问的页面不存在'),
      ),
    );
  }
}
