import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
        body: new ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Text('entery $index');
          },
          itemCount: 20,
          itemExtent: 20,
        ));
  }
}
