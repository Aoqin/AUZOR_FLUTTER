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
          child: SafeArea(
            child: ListView(
              children: <Widget>[
                Container(
                  child: FlutterLogo(size: 160),
                  margin: EdgeInsets.only(bottom: 25),
                ),
                LoginForm()
                // Container(
                //   child: Column(
                //     children: <Widget>[
                //       Expanded(
                //           child: Container(
                //               width: 150.0,
                //               height: 150.0,
                //               child: FlutterLogo())),
                //       Expanded(child: Center(child: LoginForm()))
                //     ],
                //   ),
                // ),
              ],
              semanticChildCount: 1,
            ),
          )),
    );
  }
}
