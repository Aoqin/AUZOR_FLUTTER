import 'package:flutter/material.dart';

class ReceivePage extends StatefulWidget {
  @override
  _ReceivePageState createState() => _ReceivePageState();
}

class _ReceivePageState extends State<ReceivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              pinned: true,
              expandedHeight: 280,
              title: Text('接车信息'),
              flexibleSpace: Container(
                margin:
                    EdgeInsets.only(top: 100, right: 15, left: 15, bottom: 10),
                decoration: BoxDecoration(
                    // color: Colors.white,
                    // boxShadow: <BoxShadow>[
                    //   BoxShadow(
                    //       color: Color.fromRGBO(0, 0, 0, .3),
                    //       spreadRadius: 1.0,
                    //       blurRadius: 2.0,
                    //       offset: Offset(2, 3)),
                    // ],
                    borderRadius: BorderRadius.circular(5.0)),
                child: Column(
                  children: <Widget>[
                    Row(
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
                    Container(
                      margin: EdgeInsets.only(top: 5.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0)),
                      height: 120,
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                prefixStyle: TextStyle(color: Colors.black),
                                prefixText: 'VIN码',
                                border: InputBorder.none),
                          ),
                          TextField(
                            decoration: InputDecoration(
                                prefix: Text('VIN码'), border: InputBorder.none),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
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
