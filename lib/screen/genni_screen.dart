import 'package:flutter/material.dart';
import 'dart:math';

class GenniScreen extends StatefulWidget {
  static const id = 'Genni_screen';

  @override
  _GenniScreenState createState() => _GenniScreenState();
}

class _GenniScreenState extends State<GenniScreen> {
  int numGenni = 1;
//   String fraseRan;
// List<String> frasiGenni = [
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
      backgroundColor: Colors.brown[200],
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[900],
        title: Text('Chiedi a Genni qualsiasi cosa'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // Text(fraseRan),
          FlatButton(
            onPressed: () {
              setState(() {
                // fraseRan = frasiGenni[Random().nextInt(frasiGenni.length)];
                numGenni = Random().nextInt(6) + 1;
              });
            },
            child: Text('Genni è una baccalà', style: TextStyle(fontSize: 60.0, fontFamily: 'Inkfree'),), 
            // Image.asset('images/Genni$numGenni.png'),
          ),
        ],
      ),
    );
  }
}