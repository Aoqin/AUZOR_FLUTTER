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
          new Divider(),
          new ListTile(
              leading: Icon(Icons.home),
              title: new Text('Home'),
              onTap: () => Navigator.pushNamed(context, '/home')),
          new Divider(),
          new ListTile(
              leading: Icon(Icons.people),
              title: Text('Personal'),
              onTap: () => Navigator.pushNamed(context, '/personal')),
          Divider(),
          new ListTile(
              leading: Icon(Icons.directions_car),
              title: Text('Cars'),
              onTap: () => Navigator.pushNamed(context, '/cars')),
          Divider(),
          new ListTile(
              leading: Icon(Icons.build),
              title: Text('Receive'),
              onTap: () => Navigator.pushNamed(context, '/receive')),
          Divider(),
          new ListTile(
              leading: Icon(Icons.cached),
              title: Text('License plate'),
              onTap: () => Navigator.pushNamed(context, '/licensePlate')),
          Divider(),
          new ListTile(
              leading: Icon(Icons.show_chart),
              title: Text('Work Data'),
              onTap: () => Navigator.pushNamed(context, '/workData')),
        ]),
      ),
    );
  }
}
