/*
 * @Author: MarioGo
 * @Date: 2021-10-01 10:34:58
 * @LastEditTime: 2021-10-01 11:00:57
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/widget/common_form_item.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';

class CommonFormItem extends StatefulWidget {
  //组件需要的参数
  final String? label;
  final Widget Function(BuildContext content)? contentBuilder;
  final Widget? suffix;
  final String? suffixText;
  final String? hitText;
  final ValueChanged? onChanged;
  final TextEditingController? controller;

//构造函数
  const CommonFormItem(
      {Key? key,
      this.label,
      this.contentBuilder,
      this.suffix,
      this.suffixText,
      this.hitText,
      this.onChanged,
      this.controller})
      : super(key: key);

  @override
  _CommonFormItemState createState() => _CommonFormItemState();
}

class _CommonFormItemState extends State<CommonFormItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14, right: 14),
      decoration: BoxDecoration(
          border: Border(
              bottom:
                  BorderSide(width: 1, color: Theme.of(context).dividerColor))),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            child: Text(widget.label!,
                style: TextStyle(fontSize: 16, color: Colors.black87)),
          ),
          Expanded(
              child: widget.contentBuilder != null
                  ? widget.contentBuilder!(context)
                  : TextField(
                      controller: widget.controller,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: widget.hitText),
                    )),
          if (widget.suffix != null) widget.suffix!,
          if (widget.suffix == null && widget.suffixText != null)
            Text(widget.suffixText!)
        ],
      ),
    );
  }
}
