import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chiedianina/modules/row_constructor.dart';
import 'package:chiedianina/constant/constant.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 35.0,),
            Column(
              children: <Widget>[
                Text('Chiedi a ', style: kTitleTextStyle,),
                FadeAnimatedTextKit(
                  textStyle: kTitleTextStyle,
                  text: ['Nina', 'Maya', 'Genni', 'Scianel',],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                RowConstructor(
                  leftImage: 'images/nina_linea.png',
                  leftTitle: 'Nina',
                  rightTitle: 'Maya',
                  rightImage: 'images/maya_linea.png',
                ),
                SizedBox(
                  height: 10.0,
                ),
                RowConstructor(
                  leftImage: 'images/genni_linea.png',
                  leftTitle: 'Genni',
                  rightTitle: 'Scianel',
                  rightImage: 'images/scianel_linea.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
