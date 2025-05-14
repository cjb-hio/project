import 'dart:io';

import 'package:flutter/material.dart';
import 'package:wechat/page/item/item.dart';

class MinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
          child: ListView(children: [
        _HeaderItem(),
        SizedBox(
          height: 12,
        ),
        CommonItem(
          '服务',
          'assets/item_icon.png',
        ),
        SizedBox(
          height: 12,
        ),
        CommonItem(
          '收藏',
          'assets/item_icon.png',
        ),
        CommonItem(
          '朋友圈',
          'assets/item_icon.png',
        ),
        CommonItem(
          '卡包',
          'assets/item_icon.png',
        ),
        CommonItem(
          '表情',
          'assets/item_icon.png',
        ),
        SizedBox(
          height: 12,
        ),
        CommonItem(
          '设置',
          'assets/item_icon.png',
        ),
      ],physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),)),
    );
  }
}

class _HeaderItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 160,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Image.asset(
            "assets/item_demo_picture.png",
            width: 120,
            height: 120,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "秋天里的菠菜",
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Text("微信号：a991217655")
            ],
          )), //中间名称
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/item_demo_picture.png",
                  width: 40,
                  height: 40,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/item_go.png",
                  width: 20,
                  height: 20,
                )
              ],
            ),
          ), //二维码和跳转
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
