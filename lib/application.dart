/*
 * @Author: MarioGo
 * @Date: 2021-09-29 15:10:27
 * @LastEditTime: 2021-09-30 11:07:51
 * @LastEditors: MarioGo
 * @Description: 
 * @FilePath: /haokezu_flutter/lib/application.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:goodhouse/pages/login.dart';
import 'package:goodhouse/routes.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: const LoginPage(),
      onGenerateRoute: router.generator,
    );
  }
}
