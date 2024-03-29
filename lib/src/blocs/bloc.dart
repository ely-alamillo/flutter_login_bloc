import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'validators.dart';

class Bloc with Validators {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  // add data to stream
  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  // button stream
  Stream<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) {
        if (e == _email.value && p == _password.value) {
          return true;
        }
        return false;
      });

  // get data from stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  // closes streams when we want
  dispose() {
    _email.close();
    _password.close();
  }

  submit() {
    final validEmail = _email.value;
    final validPassword = _password.value;

    print('Email is $validEmail');
    print('Password is $validPassword');
  }
}
