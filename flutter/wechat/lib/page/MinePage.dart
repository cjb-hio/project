import 'package:flutter/material.dart';
import 'package:wechat/page/item.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CommonItem('123', 'assets/item_icon.png')
      ]

    );
  }
}
