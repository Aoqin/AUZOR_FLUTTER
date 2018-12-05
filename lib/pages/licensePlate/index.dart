import 'package:flutter/material.dart';

class LicensePlatePage extends StatefulWidget {
  @override
  _LicensePlatePageState createState() => _LicensePlatePageState();
}

class _LicensePlatePageState extends State<LicensePlatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('录入车牌'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.crop_free),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 110),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                '车牌号码',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 25),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(top: 10, right: 15, bottom: 10, left: 15),
                  hintText: '输入车牌号',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0)),
                ),
                maxLength: 8,
              ),
            ),
            Container(
              child: Text(
                '确认车牌号信息,如无误点击确定',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              width: 220,
              height: 48,
              decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        spreadRadius: 1.0,
                        blurRadius: 5.0,
                        offset: Offset(2, 3),
                        color: Color.fromRGBO(0, 0, 0, .3))
                  ],
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(24))),
              child: FlatButton(
                child: Text('确认', style: TextStyle(color: Colors.white)),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
