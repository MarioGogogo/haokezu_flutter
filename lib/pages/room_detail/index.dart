// ignore_for_file: prefer_const_constructors

/*
 * @Author: MarioGo
 * @Date: 2021-09-29 15:42:31
 * @LastEditTime: 2021-10-29 21:05:02
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/pages/room_detail/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';
import 'package:goodhouse/pages/home/info/index.dart';
import 'package:goodhouse/widget/common_swiper.dart';
import 'package:goodhouse/widget/common_tag.dart';
import 'package:goodhouse/widget/common_title.dart';
import 'package:goodhouse/widget/room_appliance.dart';

import 'data.dart';

var bottomButtonTextStyle = TextStyle(fontSize: 20.0, color: Colors.white);

class RoomDetailPage extends StatefulWidget {
  final String roomId;

  const RoomDetailPage({Key? key, required this.roomId}) : super(key: key);

  @override
  _RoomDetailPageState createState() => _RoomDetailPageState();
}

class _RoomDetailPageState extends State<RoomDetailPage> {
  RoomDetailData? data;
  bool isLike = false;
  bool showAllText = false;
  @override
  void initState() {
    data = defaultData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (null == data) return Container();
    //如果文字过多不展示全部
    bool showTextTool = data!.subTitle!.length > 100;

    return Scaffold(
      appBar: AppBar(
        // title: Text('roomId:${widget.roomId}'),
        title: Text(data!.title!),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                // Share.share('https://baidu.com');
              }),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              CommonSwiper(),
              CommonTitle(title: data!.title!),
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      data!.price.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.pink),
                    ),
                    Text(
                      ' 元/月',
                      style: TextStyle(fontSize: 16, color: Colors.pink),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Wrap(
                  spacing: 2,
                  children: data!.tags!.map((item) => CommonTag(item)).toList(),
                ),
              ),
              Divider(
                color: Colors.grey,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Wrap(
                  runSpacing: 10,
                  children: [
                    BaseInfoItem(content: '面积：${data!.size}平方米'),
                    BaseInfoItem(content: '楼层：${data!.floor}'),
                    BaseInfoItem(content: '房型：${data!.roomType}'),
                    BaseInfoItem(content: '装修：精装'),
                  ],
                ),
              ),
              CommonTitle(title: '房屋配置'),
              RoomApplianceList(list: data!.applicances ?? []),
              CommonTitle(title: '房屋概况'),
              Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data!.subTitle ?? '暂无房屋概况',
                      maxLines: showAllText ? null : 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        showTextTool
                            ? GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showAllText = !showAllText;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Text(showAllText ? '收起' : '展开'),
                                    Icon(showAllText
                                        ? Icons.keyboard_arrow_up
                                        : Icons.keyboard_arrow_down),
                                  ],
                                ),
                              )
                            : Container(),
                        Text('举报'),
                      ],
                    ),
                  ],
                ),
              ),
              CommonTitle(title: '猜你喜欢'),
              Info(),
              // 防止底部遮挡
              Container(
                height: 40,
              ),
            ],
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            height: 100.0,
            bottom: 0,
            child: Row(children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isLike = !isLike;
                  });
                },
                child: Container(
                    width: 60,
                    height: 50,
                    margin: EdgeInsets.only(right: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            isLike ? Icons.star : Icons.star_border,
                            size: 24,
                            color: isLike ? Colors.green : Colors.black,
                          ),
                          Text(isLike ? "已收藏" : "收藏")
                        ])),
              ),
              Expanded(
                  child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        margin: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(6.0)),
                        child: Center(
                          child: Text('联系房东', style: bottomButtonTextStyle),
                        ),
                      ))),
              Expanded(
                  child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        margin: EdgeInsets.only(right: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(6.0)),
                        child: Center(
                          child: Text('预约看房', style: bottomButtonTextStyle),
                        ),
                      ))),
            ]),
          ),
        ],
      ),
    );
  }
}

// 小组件
class BaseInfoItem extends StatelessWidget {
  final String content;

  const BaseInfoItem({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
      width: (MediaQuery.of(context).size.width - 3 * 10) / 2,
    );
  }
}
