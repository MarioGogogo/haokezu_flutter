/*
 * @Author: MarioGo
 * @Date: 2021-09-30 10:35:36
 * @LastEditTime: 2021-09-30 11:12:34
 * @LastEditors: MarioGo
 * @Description: 房屋推荐
 * @FilePath: /haokezu_flutter/lib/pages/home/tab_index/index_recommend.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

import 'index_recommend_data.dart';
import 'index_recommend_item_widget.dart';

class IndexRecomment extends StatelessWidget {
  final List<IndexRecommendItem>? dataList;

  const IndexRecomment({Key? key, this.dataList = indexRecommendData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Color(0x08000000),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('房屋推荐', style: TextStyle(fontWeight: FontWeight.w600)),
              Text('更多', style: TextStyle(fontWeight: FontWeight.w300)),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
              runSpacing: 10,
              spacing: 10,
              children: dataList!
                  .map((item) => IndexRecommendItemWidget(item))
                  .toList()),
        ],
      ),
    );
  }
}
