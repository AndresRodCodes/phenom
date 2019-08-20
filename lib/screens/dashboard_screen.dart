import 'package:flutter/material.dart';
import 'package:phenom_d/screens/check_in_screen.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phenom D'),
      ),
      body: Center(
        child: Text('This is your dashboard'),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.all(8.0),
        child: FloatingActionButton.extended(
            tooltip: 'Check in',
            icon: Icon(Icons.add),
            label: Text('Check In'),
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CheckIn()));
            }),
      ),
    );
  }
}
