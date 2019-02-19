import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(160),
        child: AppBar(
          elevation: 0,
          flexibleSpace: Container(
            padding: EdgeInsets.only(top: 60),
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
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Column(children: <Widget>[
            Container(
                padding: EdgeInsets.only(right: 8, top: 10, left: 8),
                // decoration: BoxDecoration(color: Colors.white),
                alignment: Alignment.centerLeft,
                child: Column(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(right: 5),
                          child: Baseline(
                              baseline: 18,
                              baselineType: TextBaseline.alphabetic,
                              child: Text(
                                '今日工作',
                                style: TextStyle(
                                    fontSize: 18,
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                    textBaseline: TextBaseline.alphabetic),
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Row(
                        children: <Widget>[
                          Expanded(child: CountCard('接车', 10, double.infinity)),
                          Expanded(
                              child: CountCard('录入报告', 10, double.infinity)),
                          Expanded(
                              child: CountCard('推送报告', 10, double.infinity)),
                          Expanded(
                              child: CountCard('确认施工', 10, double.infinity)),
                        ],
                      )),
                ])),
            NavList(),
            LoginOutBtn()
          ])
        ],
      ),
    );
  }
}

class CountCard extends StatelessWidget {
  String text;
  int count = 0;
  double widthEdge = 200.0;
  CountCard(this.text, this.count, this.widthEdge) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black12, blurRadius: 3.0, offset: Offset(1, 1))
        ]),
        child: Column(
          children: <Widget>[
            Container(
              width: widthEdge,
              padding: EdgeInsets.only(top: 6, right: 10, bottom: 6, left: 10),
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.black12)),
              ),
              child: Text(text, style: TextStyle(color: Colors.black54)),
            ),
            Container(
              width: widthEdge,
              padding:
                  EdgeInsets.only(top: 18.0, right: 10, bottom: 10.0, left: 10),
              // height: widthEdge,
              child: Text(
                count.toString(),
                style: TextStyle(fontSize: 30, color: Colors.black87),
              ),
            )
          ],
        ));
  }
}

class NavList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Ink(
                  color: Colors.white,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(Icons.airplay),
                    ),
                    title: Text('修改密码'),
                    trailing: Icon(Icons.chevron_right),
                    onTap: () => {},
                  )),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Ink(
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.airplay),
                      ),
                      title: Text('反馈信息'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () => {},
                    ))),
            Container(
                child: Ink(
                    color: Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.airplay),
                      ),
                      title: Text('关于车况大师'),
                      trailing: Icon(Icons.chevron_right),
                      onTap: () => {},
                    )))
          ],
        ));
  }
}

class LoginOutBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24, bottom: 24),
      width: 220,
      height: 48,
      child: RaisedButton(
        color: Colors.blue,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        child: Text(
          'Login out',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
      ),
    );
  }
}
