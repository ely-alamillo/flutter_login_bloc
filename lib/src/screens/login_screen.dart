import 'package:flutter/material.dart';

import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class LoginScreen extends StatelessWidget {
  Widget build(context) {
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          emailField(bloc),
          passwordField(bloc),
          SizedBox(height: 15.0),
          submitButton(),
        ],
      ),
    );
  }
}

Widget emailField(Bloc bloc) {
  return StreamBuilder(
      stream: bloc.email,
      builder: (context, snapshot) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          onChanged: bloc.changeEmail,
          decoration: InputDecoration(
            hintText: 'Enter email',
            labelText: 'Email',
            errorText: snapshot.error,
          ),
        );
      });
}

Widget passwordField(Bloc bloc) {
  return StreamBuilder(
    stream: bloc.password,
    builder: (context, snapshot) {
      return TextField(
        onChanged: bloc.changePassword,
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Enter password',
          labelText: 'Password',
          errorText: snapshot.error,
        ),
      );
    },
  );
}

Widget submitButton() {
  return RaisedButton(
    child: Text('Login'),
    color: Colors.blue,
    onPressed: () {},
  );
}
