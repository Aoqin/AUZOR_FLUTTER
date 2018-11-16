import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ReceiveCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: <Widget>[
        Container(
          //card header
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 1, color: Colors.black12))),
          padding:
              EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Column(children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text('川A03522',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.black87)),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        alignment: Alignment.centerRight,
                        child: Text(
                          '2018-12-13 16:00',
                          style: TextStyle(fontSize: 10, color: Colors.black45),
                        ),
                      ),
                    ]),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          '奔驰2015 时尚魅力版奔驰2015 时尚魅力版奔驰2015 时尚魅力版奔驰2015 时尚魅力版',
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 14, color: Colors.black45)),
                    )
                  ])),
            ],
          ),
        ),
        Expanded(
          // card body
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
                child: Icon(Icons.trending_flat,color: Colors.black54),
              ),
              Expanded(
                flex: 1,
                child: StatusOperButton(
                    icon: Icons.assignment, active: false, text: '报告'),
              ),
              Container(
                margin: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Icon(Icons.trending_flat,color: Colors.black54),
              ),
              Expanded(
                flex: 1,
                child: StatusOperButton(
                    icon: Icons.done_all, active: false, text: '完成'),
              ),
            ],
          ),
        ),
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
            alignment: Alignment.center,
              child: Stack(
                overflow: Overflow.visible,
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
                      right: -8,
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
