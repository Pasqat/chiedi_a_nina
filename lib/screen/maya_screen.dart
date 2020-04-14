import 'package:flutter/material.dart';
import 'dart:math';

class MayaScreen extends StatefulWidget {
  static const id = 'Maya_screen';

  @override
  _MayaScreenState createState() => _MayaScreenState();
}

class _MayaScreenState extends State<MayaScreen> {
  int numMaya = 1;
//   String fraseRan;
// List<String> frasiMaya = [
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
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Maya potrebbe non rispondere'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // Text(fraseRan),
          FlatButton(
            onPressed: () {
              setState(() {
                // fraseRan = frasiMaya[Random().nextInt(frasiMaya.length)];
                numMaya = Random().nextInt(6) + 1;
              });
            },
            child: Text('Maya è una baccalà', style: TextStyle(fontSize: 60.0, fontFamily: 'Inkfree'),), 
            // Image.asset('images/Maya$numMaya.png'),
          ),
        ],
      ),
    );
  }
}
