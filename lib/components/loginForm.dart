import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  LoginForm();

  @override
  Widget build(BuildContext context) {
    return Form(
        child: new Column(children: <Widget>[
      new TextFormFieldArea(),
      new TextFormFieldArea(),
      new Container(
          decoration: BoxDecoration(
            border: Border.all(width:1.0),
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            
          ),
          width: 400.0,
          child:
              FlatButton(
                onPressed: () => 
                  Navigator.pushNamed(context, '/home')
                ,
                 child: new Text('LOGIN IN'), 
              )
            ),
    ]));
  }
}

class TextFormFieldArea extends StatelessWidget {
  final Icon icon;
  TextFormFieldArea({this.icon});

  @override
  Widget build(BuildContext content) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(25.0))
          ),
      width: 400.0,
      margin: EdgeInsets.only(bottom:20.0) ,
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.person)
        ),
      ),
    );
  }
}

class TextFieldAreaBoxDecoration {}
