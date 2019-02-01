import 'package:flutter/material.dart';

class ReceivePage extends StatefulWidget {
  @override
  _ReceivePageState createState() => _ReceivePageState();
}

class _ReceivePageState extends State<ReceivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          elevation: 0,
          title: Text('接车信息'),
          flexibleSpace: Container(
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
            margin: EdgeInsets.only(top: 100),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '车牌号码',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Container(
                              height: 36,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '川A563456',
                                style: TextStyle(
                                    color: Colors.yellowAccent,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ))),
                Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '客户信息',
                        style: TextStyle(color: Colors.white),
                      ),
                      Container(
                          alignment: Alignment.centerRight,
                          height: 36,
                          child: IconButton(
                            padding: EdgeInsets.all(0),
                            icon: Icon(Icons.people),
                            onPressed: () {},
                          )),
                    ],
                  ),
                ),
                // MaterialButton(
                //   minWidth:40 ,
                //   padding: EdgeInsets.all(0),
                //   child: Icon(Icons.people, color: Colors.blue),
                //   onPressed: () {},
                // )
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(130),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                  child: ListTile(
                title: Text('123'),
              ));
            }, childCount: 20),
          )
        ],
      ),
    );
  }
}
