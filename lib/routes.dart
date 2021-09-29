/*
 * @Author: MarioGo
 * @Date: 2021-09-29 15:11:50
 * @LastEditTime: 2021-09-29 16:49:08
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/routes.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/index.dart';
import 'package:goodhouse/pages/login.dart';
import 'package:goodhouse/pages/room_detail/index.dart';
import 'package:goodhouse/register.dart';
import 'pages/not_found.dart';

class Routes {
  //定义路由名称
  static String home = "/";
  static String login = "login";
  static String register = '/register';
  static String roomDetail = '/roomDetail/:roomId';

  //定义路由处理函数
  static final Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const HomePage();
  });

  static final Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const LoginPage();
  });

  static final Handler _registerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const RegisterPage();
  });

  static final Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return const NotFoundPage();
  });

  static final Handler _roomDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return RoomDetailPage(
      roomId: params['roomId']![0],
    );
  });

  // 编写路由处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
