import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          SizedBox(height: 15.0),
          submitButton(),
        ],
      ),
    );
  }
}

Widget emailField() {
  return TextField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      hintText: 'Enter Email',
      labelText: 'Email',
    ),
  );
}

Widget passwordField() {
  return TextField(
    // obscureText: true,
    decoration: InputDecoration(
      hintText: 'Enter password',
      labelText: 'Password',
    ),
  );
}

Widget submitButton() {
  return RaisedButton(
    child: Text('Login'),
    color: Colors.blue,
    onPressed: () {},
  );
}
