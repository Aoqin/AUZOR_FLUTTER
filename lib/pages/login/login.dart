import 'package:flutter/material.dart';

import 'package:auzor/components/loginForm.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              new Expanded(
                  child: new Container(
                      width: 150.0, height: 150.0, child: FlutterLogo())),
              new Expanded(child: new Center(child: new LoginForm()))
            ],
          ),
        ),
      ),
    );
  }
}
