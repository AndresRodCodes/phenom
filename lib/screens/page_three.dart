import 'package:flutter/material.dart';
import 'package:phenom_d/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:phenom_d/brain_list/result.dart';

enum Consistency { one, five, ten }

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  Consistency _consistency = Consistency.five;
  final _firestore = Firestore.instance;
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
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Consistency',
              style: kTextStyleTitle,
            ),
            SizedBox(
              height: 50.0,
            ),
            ListTile(
              title: Text('One'),
              leading: Radio(
                value: Consistency.one,
                groupValue: _consistency,
                onChanged: (Consistency value) {
                  setState(() {
                    _consistency = value;
                    print(_consistency.index);
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Five'),
              leading: Radio(
                value: Consistency.five,
                groupValue: _consistency,
                onChanged: (Consistency value) {
                  setState(() {
                    _consistency = value;
                    print(_consistency.index);
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Ten'),
              leading: Radio(
                value: Consistency.ten,
                groupValue: _consistency,
                onChanged: (Consistency value) {
                  setState(() {
                    _consistency = value;
                  });
                },
              ),
            ),
            RaisedButton(
              child: Text('Submit'),
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                Result.consistency = _consistency.index;

                _firestore.collection('checkin').add({
                  'email' : loggedInUser.email,
                  'weight' : Result.weight,
                  'stateOfMind' : Result.stateOfMind,
                  'consistency' :Result.consistency,
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
