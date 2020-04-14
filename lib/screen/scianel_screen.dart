import 'package:flutter/material.dart';
import 'dart:math';

class ScianelScreen extends StatefulWidget {
  static const id = 'Scianel_screen';

  @override
  _ScianelScreenState createState() => _ScianelScreenState();
}

class _ScianelScreenState extends State<ScianelScreen> {
  int numScianel = 1;
//   String fraseRan;
// List<String> frasiScianel = [
//   'SI',
//   'Non dovresti neanche chiederlo',
//   'Solo UNA però',
//   'NO',
//   'Chiedimelo di nuovo più tardi',
//   'Non ne ho idea',
// ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[200],
        title: Text('Chiedi a Scianel qualsiasi cosa'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // Text(fraseRan),
          FlatButton(
            onPressed: () {
              setState(() {
                // fraseRan = frasiScianel[Random().nextInt(frasiScianel.length)];
                numScianel = Random().nextInt(6) + 1;
              });
            },
            child: Text('Scianel è una baccalà', style: TextStyle(fontSize: 60.0, fontFamily: 'Inkfree'),), 
            // Image.asset('images/Scianel$numScianel.png'),
          ),
        ],
      ),
    );
  }
}