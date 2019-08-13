import 'package:flutter/material.dart';
import 'constants.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Icon(
              Icons.fitness_center,
              size: 100.0,
            ),
            SizedBox(height: 20.0),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
              decoration: kTextFieldDecoration.copyWith(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: kTextFieldDecoration.copyWith(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
              ),
            ),
            SizedBox(
              height: 10,
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
                onPressed: () {
                  print('Login');
                },
              ),
            ),
            Text('Forgot password?')
          ],
        ),
      ),
    );
  }
}
