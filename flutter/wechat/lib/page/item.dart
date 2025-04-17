import 'package:flutter/material.dart';

class MineHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}


class CommonItem extends StatelessWidget {
  String title;
  String iconPath;
  String? subTitle;
  String? subImage;
  bool? hasSubNewMessage;

  CommonItem(this.title, this.iconPath,
      {this.subTitle, this.subImage, this.hasSubNewMessage})

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //左边主
          Row(children: [Image.asset(iconPath), Text(title)]),
          //靠右
          Row(children: getRowRight())]);
  }

  List<Widget> getRowRight() {
    List<Widget> list = [];
    subTitle ?? list.add(Text(subTitle!));
    subImage ?? list.add(Image.asset(subImage!));
    return list;
  }

}
