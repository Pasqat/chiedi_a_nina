import 'package:flutter/material.dart';
import 'dart:math';

class NinaScreen extends StatefulWidget {
  static const id = 'nina_screen';

  @override
  _NinaScreenState createState() => _NinaScreenState();
}

class _NinaScreenState extends State<NinaScreen> {
  int numNina = 1;
//   String fraseRan;
// List<String> frasiNina = [
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
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Chiedi a Nina qualsiasi cosa'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // Text(fraseRan),
          FlatButton(
              onPressed: () {
                setState(() {
                  // fraseRan = frasiNina[Random().nextInt(frasiNina.length)];
                  numNina = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/nina$numNina.png')),
              
        ],
      ),
    );
  }
}
