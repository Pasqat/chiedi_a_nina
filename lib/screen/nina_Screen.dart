import 'package:flutter/material.dart';
import 'dart:math';


class NinaScreen extends StatelessWidget {

static const id = 'nina_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        title: Text('Chiedi a Nina qualsiasi cosa'),
        backgroundColor: Colors.brown[300],
      ),
      body: NinaDice(),
    );
  }
}

class NinaDice extends StatefulWidget {
  @override
  _NinaDiceState createState() => _NinaDiceState();
}

class _NinaDiceState extends State<NinaDice> {
  int numNina = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FlatButton(
            onPressed: () {
              setState(() {
                numNina = Random().nextInt(6) + 1;
              });
            },
            child: Image.asset('images/nina$numNina.png')),
      ],
    );
  }
}