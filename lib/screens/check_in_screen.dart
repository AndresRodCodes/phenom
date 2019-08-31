import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'page_one.dart';
import 'page_two.dart';
import 'Page_three.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CheckIn extends StatefulWidget {
  @override
  _CheckInState createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    final user = await _auth.currentUser();
    if (user != null) {
      loggedInUser = user;
    }
  }

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
