import 'package:flutter/material.dart';
import 'package:chiedianina/constant/constant.dart';

class RowConstructor extends StatelessWidget {
  RowConstructor(
      {this.leftTitle, this.leftImage, this.rightTitle, this.rightImage});

  final String leftTitle;
  final String leftImage;
  final String rightTitle;
  final String rightImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  child: Image.asset(leftImage),
                ),
                Text(
                  leftTitle,
                  style: kNameTextStyle,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(rightImage),
                Text(
                  rightTitle,
                  style: kNameTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
