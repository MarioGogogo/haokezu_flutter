/*
 * @Author: MarioGo
 * @Date: 2021-09-30 10:47:14
 * @LastEditTime: 2021-09-30 11:10:23
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /haokezu_flutter/lib/pages/home/tab_index/index_recommend_item_widget.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'index_recommend_data.dart';

var textStyle = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);

class IndexRecommendItemWidget extends StatelessWidget {
  final IndexRecommendItem data;
  const IndexRecommendItemWidget(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(data.navigateUrl);
      },
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        width: (MediaQuery.of(context).size.width) / 2.3, //获取屏幕宽度
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(data.title, style: textStyle),
                Text(data.subTitle, style: textStyle),
              ],
            ),
            Image.asset(
              data.imageUrl,
              width: 60,
            )
          ],
        ),
      ),
    );
  }
}
