import 'package:flutter/material.dart';
import 'package:phenom_d/constants.dart';

enum Consistency { one, five, ten }

class PageThree extends StatefulWidget {
  @override
  _PageThreeState createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  Consistency _consistency = Consistency.five;
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
                    print(_consistency.index);
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
                print('Send data to Firebase');
              },
            ),
          ],
        ),
      ),
    );
  }
}
