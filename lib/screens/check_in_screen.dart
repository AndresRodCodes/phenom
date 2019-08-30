import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'PageThree.dart';

class CheckIn extends StatefulWidget {
  @override
  _CheckInState createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check-in'),
      ),
        body: PageView(
      children: <Widget>[
        PageOne(),
        PageTwo(),
        PageThree(),
      ],
    ));
  }
}
