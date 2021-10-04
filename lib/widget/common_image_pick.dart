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
  _pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (null == image) return;
    //bug:这里点击选择相册会闪退
    setState(() {
      files = files..add(image);
    });
    print("files :::: $files");
  }

  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width - 10.0 * 4) / 3;
    var height = width / imageWidgetHeightRatio;
    Widget addButton = GestureDetector(
      onTap: () {
        _pickImage();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: width,
        height: height,
        color: Colors.grey,
        child: Center(
          child: Text(
            '+',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );

    Widget wrapper(int index) {
      return Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Image.file(File(files[index].path),
              width: width, height: height, fit: BoxFit.cover),
          Positioned(
              right: -20,
              top: -20,
              child: IconButton(
                onPressed: () {
                  //删除图片点击事件
                  print("删除图片");
                },
                icon: Icon(Icons.delete_forever_outlined),
                color: Colors.blue,
              ))
        ],
      );
    }

    List<Widget> list = List.generate(files.length, (index) => wrapper(index))
        .toList()
          ..add(addButton);

    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: list,
      ),
    );
  }
}
