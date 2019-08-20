import 'package:flutter/material.dart';
import 'package:phenom_d/screens/login_screen.dart';
import 'constants.dart';

void main() => runApp(PhenomD());

class PhenomD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          primaryColor: kPrimaryColor,
          accentColor: Colors.white,
          scaffoldBackgroundColor: Colors.white),
      home: LoginScreen(),
    );
  }
}
