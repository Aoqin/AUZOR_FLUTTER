import 'package:flutter/material.dart';


class Auzor extends StatefulWidget {
  @override
  _AuzorState createState() => _AuzorState();
}

class _AuzorState extends State<Auzor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('AUZOR'), actions: <Widget>[
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () => {},
        )
      ]),
      body: Container(
        child: new ListView(children: [
          new ListTile(
              leading: Icon(Icons.people),
              title: new Text('Login'),
              onTap: () => Navigator.pushNamed(context, '/login')),
          Divider(),
          new ListTile(
              leading: Icon(Icons.people),
              title: new Text('home'),
              onTap: () => Navigator.pushNamed(context, '/home')),
          Divider(),
          new ListTile(
              leading: Icon(Icons.people),
              title: new Text('saibeier'),
              onTap: () => Navigator.pushNamed(context, '/saibeier'))
        ]),
      ),
    );
  }
}
