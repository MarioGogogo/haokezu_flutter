/*
 * @Author: MarioGo
 * @Date: 2021-09-29 14:49:40
 * @LastEditTime: 2021-09-29 16:00:26
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/home/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("首页")),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: const Text("跳转首页")),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "login");
                },
                child: const Text("跳转登录页")),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/roomDetail/2222");
                },
                child: const Text("跳转详情带ID")),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/aaaa");
                },
                child: const Text("跳转错误页面"))
          ],
        ));
  }
}
