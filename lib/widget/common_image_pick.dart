/*
 * @Author: MarioGo
 * @Date: 2021-10-04 11:11:53
 * @LastEditTime: 2021-10-04 11:43:35
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/widget/common_image_pick.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

const List<String> defautImages = [
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
  'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg',
];

// 设置图片宽高
var imageWidth = 750.0;
var imageHeight = 424.0;
var imageWidgetHeightRatio = imageWidth / imageHeight; //宽高比

class CommonImagePicker extends StatefulWidget {
  final ValueChanged<List<File>> onChange;

  const CommonImagePicker({Key? key, required this.onChange}) : super(key: key);

  @override
  _CommonImagePickerState createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {
  List<XFile> files = [];
  final ImagePicker _picker = ImagePicker();
  //根据图片生成路径地址
  _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image == null) return;
    setState(() {
      files = files..add(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width - 10.0 * 4) / 3;
    var height = width / imageWidgetHeightRatio;
    //生成图片添加按钮
    Widget addButton = GestureDetector(
      onTap: () {
        _pickImage();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: width,
        height: height,
        color: Colors.blueGrey[50],
        child: Center(
          child: Icon(Icons.add_a_photo),
        ),
      ),
    );
    //图片预览组件
    Widget wrapper_1(String imageUrl) {
      return Image.network(imageUrl,
          width: width, height: height, fit: BoxFit.cover);
    }

    Widget wrapper(XFile imageUri) {
      return Semantics(
        child: ListView.builder(
          key: UniqueKey(),
          itemBuilder: (context, imageUri) {
            return Semantics(
              child: Image.file(File(files[imageUri].path)),
            );
          },
          itemCount: files.length,
        ),
      );
    }

    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: defautImages.map((item) => wrapper_1(item)).toList()
          ..add(addButton),
      ),
    );
  }
}
