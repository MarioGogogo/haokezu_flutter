// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/*
 * @Author: MarioGo
 * @Date: 2021-09-29 14:49:17
 * @LastEditTime: 2021-09-29 16:48:01
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/login.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //是否显示密码
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("登录")),
        body: SafeArea(
          minimum: EdgeInsets.all(30),
          child: ListView(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "用户名",
                    hintText: "请输入用户名"),
              ),
              Padding(padding: EdgeInsets.all(10)),
              TextField(
                  obscureText: !showPassword, //是否隐藏密码
                  decoration: InputDecoration(
                      labelText: "密码",
                      hintText: "请输入密码",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                          icon: Icon(showPassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          }))),
              Padding(padding: EdgeInsets.all(10)),
              ElevatedButton(onPressed: () {}, child: Text("登录")),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("还没有账号？"),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, 'register');
                      },
                      child: Text("去注册"))
                ],
              )
            ],
          ),
        ));
  }
}
