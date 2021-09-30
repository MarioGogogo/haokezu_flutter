// ignore_for_file: unused_field

/*
 * @Author: MarioGo
 * @Date: 2021-09-30 13:39:03
 * @LastEditTime: 2021-09-30 15:21:28
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /haokezu_flutter/lib/widget/search_bar/index.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  //组件需要的参数
  final bool? showLocation;
  final Function? goBackCallback;
  final String? inputValue;
  final String? defaultInputValue;
  final Function? onCancel;
  final bool? showMap;
  final Function? onSearch;
  final ValueChanged<String>? onSearchSubmit;

  const SearchBar(
      {Key? key,
      this.showLocation,
      this.goBackCallback,
      this.inputValue = "",
      this.defaultInputValue = "请输入搜索关键词",
      this.onCancel,
      this.showMap,
      this.onSearch,
      this.onSearchSubmit})
      : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _searchWord = '';
  late TextEditingController _controller;
  late FocusNode _focusNode; //创建变量 然后实例化
  Function? _onClean() {
    _controller.clear();
    setState(() {
      _searchWord = '';
    });
  }

  @override
  void initState() {
    _focusNode = FocusNode();
    _controller = TextEditingController(text: widget.inputValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if (widget.showLocation != null)
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(Icons.room, color: Colors.green, size: 20),
                  Text('广州',
                      style: TextStyle(color: Colors.black, fontSize: 18)),
                ],
              ),
            ),
          if (widget.goBackCallback != null)
            GestureDetector(
              // onTap: widget.goBackCallback,
              child: Icon(
                Icons.chevron_left,
                color: Colors.black87,
              ),
            ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Container(
            height: 30,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(18)),
            padding: EdgeInsets.only(left: 8),
            child: TextField(
              focusNode: _focusNode,
              onTap: () {
                //如果是搜索页则需要判断 是否取消失去焦点事件
                if (widget.onSearchSubmit == null) {
                  _focusNode.unfocus();
                }
                widget.onSearch!();
              },
              textInputAction: TextInputAction.search,
              onSubmitted: widget.onSearchSubmit,
              controller: _controller,
              onChanged: (String value) {
                setState(() {
                  _searchWord = value;
                });
              },
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: -4),
                  hintText: widget.defaultInputValue,
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24,
                    color: Colors.grey,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _onClean();
                    },
                    child: Icon(
                      Icons.clear,
                      size: 24,
                      color: _searchWord == "" ? Colors.white70 : Colors.grey,
                    ),
                  )),
            ),
          )),
          SizedBox(width: 4),
          if (widget.onCancel != null)
            GestureDetector(
              child: Text(
                "取消",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          if (widget.showLocation != null)
            Image.asset("static/icons/widget_search_bar_map.png")
        ],
      ),
    );
  }
}
