import 'package:chiedianina/screen/genni_screen.dart';
import 'package:chiedianina/screen/maya_screen.dart';
import 'package:chiedianina/screen/scianel_screen.dart';
import 'package:flutter/material.dart';
import 'package:chiedianina/screen/nina_Screen.dart';
import 'package:chiedianina/screen/welcome_screen.dart';

void main() => runApp(ChiediA());

class ChiediA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        NinaScreen.id: (context) => NinaScreen(),
        MayaScreen.id: (context) => MayaScreen(),
        GenniScreen.id: (context) => GenniScreen(),
        ScianelScreen.id: (context) => ScianelScreen(),

      }
    );
  }
}