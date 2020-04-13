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
        NinaScreen.id: (context) => NinaDice(),
      }
    );
  }
}