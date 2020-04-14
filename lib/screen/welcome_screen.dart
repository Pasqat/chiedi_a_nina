import 'package:chiedianina/screen/genni_screen.dart';
import 'package:chiedianina/screen/maya_screen.dart';
import 'package:chiedianina/screen/nina_Screen.dart';
import 'package:chiedianina/screen/scianel_screen.dart';
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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF70cee9), Color(0xffaeffb0)],
            begin: FractionalOffset.topLeft,
            end: FractionalOffset.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 35.0,
            ),
            Column(
              children: <Widget>[
                Text(
                  'Chiedi a ',
                  style: kTitleTextStyle,
                ),
                FadeAnimatedTextKit(
                  textStyle: kTitleTextStyle,
                  text: [
                    'Nina',
                    'Maya',
                    'Genni',
                    'Scianel',
                    '...',
                  ],
                ),
              ],
            ),
            Column(
              children: <Widget>[
                RowConstructor(
                  leftImage: 'images/nina_linea.png',
                  leftTitle: 'Nina',
                  onPressedLeft: () {
                    Navigator.pushNamed(context, NinaScreen.id);
                  },
                  rightTitle: 'Maya',
                  splashColorRight: Colors.blueGrey,
                  onPressedRight: () {
                    Navigator.pushNamed(context, MayaScreen.id);
                  },
                  rightImage: 'images/maya_linea.png',
                ),
                SizedBox(
                  height: 10.0,
                ),
                RowConstructor(
                  leftImage: 'images/genni_linea.png',
                  leftTitle: 'Genni',
                  splashColorLeft: Colors.deepOrange[900],
                  onPressedLeft: () {
                    Navigator.pushNamed(context, GenniScreen.id);
                  },
                  rightTitle: 'Scianel',
                  rightImage: 'images/scianel_linea.png',
                  splashColorRight: Colors.deepOrangeAccent[100],
                  onPressedRight: () {
                    Navigator.pushNamed(context, ScianelScreen.id);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
