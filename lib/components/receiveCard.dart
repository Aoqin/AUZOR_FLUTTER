import 'package:flutter/material.dart';

class ReceiveCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Container(
          height: 48,
          padding: EdgeInsets.only(left: 15.0, right: 15.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Column(children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '川A03522',
                        style: TextStyle(fontSize: 18, color: Colors.black87)
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('奔驰2015 时尚魅力版',
                          style:
                              TextStyle(fontSize: 12, color: Colors.black45)),
                    )
                  ])),
              Container(
                decoration: BoxDecoration(),
                alignment: Alignment.centerRight,
                child: Text(
                  '2018-12-13 16:00',
                  style: TextStyle(fontSize: 10, color: Colors.black45),
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Expanded(
          flex: 2,
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: StatusOperButton(
                  icon: Icons.edit_location,
                  active: true,
                  text: '接车',
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Icon(Icons.trending_flat),
              ),
              Expanded(
                flex: 1,
                child: StatusOperButton(
                    icon: Icons.assignment, active: false, text: '报告'),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Icon(Icons.trending_flat),
              ),
              Expanded(
                flex: 1,
                child: StatusOperButton(
                    icon: Icons.done_all, active: false, text: '完成'),
              ),
            ],
          ),
        ),
        Container(
            alignment: Alignment.centerRight,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new Container(),
                ),
                IconButton(
                  icon: Icon(Icons.more_horiz, color: Colors.black54),
                  onPressed: () {},
                )
              ],
            )),
      ],
    ));
  }
}

class StatusOperButton extends StatelessWidget {
  IconData icon;
  bool active;
  String text;
  StatusOperButton({this.icon, this.active, this.text});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 55,
      height: 48,
      child: Stack(
        children: <Widget>[
          Container(
            width: 48,
            height: 48,
            padding: EdgeInsets.all(0.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(24.0)),
                border: Border.all(width: 1.0, color: Colors.black54)),
            child: IconButton(
              icon: Icon(
                icon,
                color: Colors.black54,
              ),
              onPressed: () {},
            ),
          ),
          Positioned(
              bottom: 2,
              right: 0,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ))
        ],
      ),
    ));
  }
}
