import 'package:flutter/material.dart';
import 'package:phenom_d/constants.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:phenom_d/screens/dashboard_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  final FocusNode _passwordFocus = FocusNode();
  final _auth = FirebaseAuth.instance;
  String emailInput;
  String passwordInput;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 5.0,
          title: Center(
            child: Text('Phenom D'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Be",
                    style: TextStyle(fontSize: 43.0, fontFamily: 'SpecialElite'),
                  ),
                  SizedBox(width: 20.0, height: 100.0),
                  RotateAnimatedTextKit(
                      duration: Duration(milliseconds: 7000),
                      isRepeatingAnimation: false,
                      text: ["STRONG", "BETTER", "MORE", "CONSISTENT"],
                      textStyle:
                          TextStyle(fontSize: 40.0, fontFamily: 'SpecialElite'),
                      textAlign: TextAlign.start,
                      alignment: AlignmentDirectional.topStart),
                ],
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                cursorColor: kCursorColor,
                textInputAction: TextInputAction.next,
                onChanged: (input) {
                  emailInput = input;
                },
                onSubmitted: (v) {
                  FocusScope.of(context).requestFocus(_passwordFocus);
                },
                decoration: kTextFieldDecoration.copyWith(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                cursorColor: kCursorColor,
                obscureText: true,
                focusNode: _passwordFocus,
                onChanged: (input) {
                  passwordInput = input;
                },
                decoration: kTextFieldDecoration.copyWith(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(minWidth: double.infinity),
                child: RaisedButton(
                  child: Text('LOGIN'),
                  elevation: 4.0,
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  textColor: Colors.white,
                  onPressed: () async {
                    try {
                      final user = await _auth.signInWithEmailAndPassword(
                          email: emailInput, password: passwordInput);
                      if (user != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Dashboard(),
                          ),
                        );
                      }
                    }
                    catch (e) {
                      print(e);
                    }
                  },
                ),
              ),
              Text('Forgot password?')
            ],
          ),
        ),
      ),
    );
  }
}
