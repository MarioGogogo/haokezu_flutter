/*
 * @Author: MarioGo
 * @Date: 2021-09-30 15:44:37
 * @LastEditTime: 2021-09-30 16:06:20
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /haokezu_flutter/lib/pages/home/tab_prifile/header.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

var textStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);

class TabProfileHeader extends StatelessWidget {
  const TabProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isLogin = true;
    return isLogin ? _loginBuilder(context) : _notLoginBuilder(context);
  }

  //未登录
  Widget _notLoginBuilder(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://tva1.sinaimg.cn/large/008i3skNgy1gsuh24kjbnj30do0duaad.jpg'),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text("登录", style: textStyle),
                  ),
                  Text('  /  ', style: textStyle),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: Text('注册', style: textStyle),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '(登录后可以体验更多)',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }

  // 登录
  Widget _loginBuilder(BuildContext context) {
    String userImage =
        'https://tva1.sinaimg.cn/large/008i3skNgy1gsuhtensa6j30lk0li76f.jpg';
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(16),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage(userImage),
            ),
          ),
          SizedBox(width: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '又有刁民想害朕',
                    style: textStyle,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              Text(
                '查看编辑个人资料',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
