/*
 * @Author: MarioGo
 * @Date: 2021-10-01 11:52:09
 * @LastEditTime: 2021-10-04 11:01:03
 * @LastEditors: MarioGo
 * @Description: 文件描述
 * @FilePath: /goodhouse/lib/widget/common_select_form_item.dart
 * 可以输入预定的版权声明、个性签名、空行等
 */
import 'package:flutter/material.dart';
import 'package:goodhouse/utils/common_pick/index.dart';
// import 'package:goodhouse/utils/common_picker/index.dart';
import 'package:goodhouse/widget/common_form_item.dart';

class CommonSelectFormItem extends StatelessWidget {
  final String label;
  final int value;
  final List<String> options;
  final Function(int) onChange;

  const CommonSelectFormItem(
      {Key? key,
      required this.label,
      required this.value,
      required this.options,
      required this.onChange})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonFormItem(
        label: label,
        contentBuilder: (context) {
          return GestureDetector(
            behavior: HitTestBehavior.translucent, //扩大点击区域范围
            onTap: () {
              //pick组件底部弹窗
              var result = CommonPicker.showPicker(
                context: context,
                options: options,
                value: value,
              );
              result.then((selectedValue) {
                if (value != selectedValue &&
                    selectedValue != null &&
                    onChange != null) {
                  onChange(selectedValue); //返回给父组件事件调用
                }
              });
            },
            child: Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    options[value],
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.keyboard_arrow_right),
                ],
              ),
            ),
          );
        });
  }
}
