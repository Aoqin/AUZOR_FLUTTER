import 'package:flutter/material.dart';

class ReceivePage extends StatefulWidget {
  @override
  _ReceivePageState createState() => _ReceivePageState();
}

class _ReceivePageState extends State<ReceivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('川A63542'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.crop_free),
              onPressed: () {},
            )
          ],
        ),
        // preferredSize: Size.fromHeight(130),
        body: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
           ),
            ListTile(
              title: Text('123'),
            ),
          ],
        ));
  }
}
