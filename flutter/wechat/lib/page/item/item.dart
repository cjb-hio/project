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
      {this.subTitle, this.subImage, this.hasSubNewMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Row(
            children: [
              SizedBox(
                width: 30,
                height: 60,
              ),
              Image.asset(
                iconPath,
                width: 40,
                height: 40,
              ),
              SizedBox(width: 30),
              Text(title)
            ],
          ),
          Row(
            children: [
              if (subTitle != null) Text(subTitle!),
              if (subTitle != null)
                SizedBox(
                  width: 12,
                ),
              if (subImage != null) Image.asset(subImage!),
              if (subImage != null)
                SizedBox(
                  width: 12,
                ),
              Image.asset(
                "assets/item_go.png",
                width: 20,
                height: 20,
              ),
              SizedBox(
                width: 20,
              )
            ],
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
    );
  }
}
