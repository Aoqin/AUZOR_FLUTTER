import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: new Column(children: <Widget>[
      AccountInput(),
      PasswordInput(),
      Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          width: double.infinity - 20,
          decoration: BoxDecoration(
            border: Border.all(width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
          ),
          height: 48,
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: new Text('LOGIN IN'),
          )),
    ]));
  }
}

class PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0, right: 10, left: 10),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: '输入密码',
            contentPadding: EdgeInsets.all(0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
            prefixIcon: Icon(Icons.lock)),
      ),
    );
  }
}

class AccountInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 0.0, right: 10, left: 10),
      child: TextFormField(
        maxLength: 11,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            hintText: '输入手机号',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(24)),
            prefixIcon: Icon(Icons.people)),
      ),
    );
  }
}
