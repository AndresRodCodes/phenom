import 'package:flutter/material.dart';
import 'package:phenom_d/constants.dart';
import 'page_one.dart';

enum StateOfMind { notFellingIt, movingForward, unstoppable }

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  StateOfMind _mind = StateOfMind.movingForward;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'State of Mind',
                style: kTextStyleTitle,
              ),
              SizedBox(
                height: 50.0,
              ),
              ListTile(
                title: Text('Not Feeling it'),
                leading: Radio(
                  value: StateOfMind.notFellingIt,
                  groupValue: _mind,
                  onChanged: (StateOfMind value) {
                    setState(() {
                      _mind = value;
                      print(_mind.index);
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
                      print(_mind.index);
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
                      print(_mind.index);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
