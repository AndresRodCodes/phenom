import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum StateOfMind { notFellingIt, movingForward, unstoppable }
enum Consistency { one, five, ten }

class CheckIn extends StatefulWidget {
  @override
  _CheckInState createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  StateOfMind _mind = StateOfMind.movingForward;
  Consistency _consistency = Consistency.five;

  CupertinoPicker iOSPicker() {
    List<Widget> pickerItems = [];

    for (int i = 0; i <= 400; i++) {
      var newItem = Text('$i');

      pickerItems.add(newItem);
    }
    return CupertinoPicker(
        backgroundColor: Colors.white,
        itemExtent: 32.0,
        scrollController: FixedExtentScrollController(initialItem: 170),
        onSelectedItemChanged: (index) {
          print(index);
        },
        children: pickerItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: <Widget>[
        Container(
          child: Center(child: iOSPicker()),
        ),
        Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Text('Not Feeling it'),
                  leading: Radio(
                    value: StateOfMind.notFellingIt,
                    groupValue: _mind,
                    onChanged: (StateOfMind value) {
                      setState(() {
                        _mind = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Moving Forward'),
                  leading: Radio(
                    value: StateOfMind.movingForward,
                    groupValue: _mind,
                    onChanged: (StateOfMind value) {
                      setState(() {
                        _mind = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text('Unstoppable'),
                  leading: Radio(
                    value: StateOfMind.unstoppable,
                    groupValue: _mind,
                    onChanged: (StateOfMind value) {
                      setState(() {
                        _mind = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListTile(
                  title: Text('One'),
                  leading: Radio(
                    value: Consistency.one,
                    groupValue: _consistency,
                    onChanged: (Consistency value) {
                      setState(() {
                        _consistency = value;
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
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
