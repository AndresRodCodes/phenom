import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PageOne extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int weight;

  CupertinoPicker iOSPicker() {
    List<Widget> pickerItems = [];

    for (int i = 0; i <= 400; i++) {
      var newItem = Text('$i');

      pickerItems.add(newItem);
    }
    return CupertinoPicker(
        backgroundColor: Colors.white,
        itemExtent: 34.0,
        scrollController: FixedExtentScrollController(initialItem: 170),
        onSelectedItemChanged: (index) {
          setState(() {
            weight = index;
          });
          print(weight);
        },
        children: pickerItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Text(
                  'This week\'s weight',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 400.0,
                  alignment: Alignment.center,
                  child: iOSPicker(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
