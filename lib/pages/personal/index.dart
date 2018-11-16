import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        child: AppBar(
          flexibleSpace: Container(
        padding: EdgeInsets.all(15.0),
        child: Center(
            child: Container(
                child: Column(
          children: <Widget>[
            Container(
              width: 70,
              height: 70,
              margin: EdgeInsets.only(bottom: 5),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'http://img.hb.aicdn.com/2f237efeea4f1433657ae1f8488be1feb0c135c43b0729-wGZPeD_fw658'),
              ),
            ),
            Text('牧易', style: TextStyle(color: Colors.white)),
            Text('google 公司亚洲ceo',
                style: TextStyle(color: Colors.white70, fontSize: 12)),
          ],
        ))),
      )),
      preferredSize:Size.fromHeight(150.0) ,
      ) ,
      body: CustomScrollView(
        slivers: <Widget>[],
      ),
    );
  }
}
