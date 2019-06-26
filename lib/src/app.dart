import 'package:flutter/material.dart';
import 'package:flutter_login_bloc/src/screens/login_screen.dart';

import 'blocs/provider.dart';

class App extends StatelessWidget {
  build(context) {
    return Provider(
      child: MaterialApp(
        title: "Log in",
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
