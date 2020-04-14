import 'package:flutter/material.dart';
import 'package:chiedianina/constant/constant.dart';

class RowConstructor extends StatelessWidget {
  RowConstructor({
    this.leftTitle,
    this.leftImage,
    this.rightTitle,
    this.rightImage,
    this.splashColorLeft = Colors.orangeAccent,
    this.splashColorRight = Colors.orangeAccent,
    this.onPressedLeft,
    this.onPressedRight,
  });

  final String leftTitle;
  final String leftImage;
  final String rightTitle;
  final String rightImage;
  final Color splashColorLeft;
  final Color splashColorRight;
  final Function onPressedLeft;
  final Function onPressedRight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: MaterialButton(
              splashColor: splashColorLeft,
              onPressed: onPressedLeft,
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
          ),
          Expanded(
            child: MaterialButton(
              splashColor: splashColorRight,
              onPressed: onPressedRight,
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
          ),
        ],
      ),
    );
  }
}
