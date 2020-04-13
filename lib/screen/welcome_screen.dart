import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Chiedi a '),
              FadeAnimatedTextKit(
                text: ['Nina', 'Maya', 'Genni', 'Scianel'],
              ),
            ],
          )
        ],
      ),
    );
  }
}
