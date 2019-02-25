import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class WorkData extends StatefulWidget {
  @override
  _WorkDataState createState() => _WorkDataState();
}

class _WorkDataState extends State<WorkData> {
  final dataArr = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('work data'),
          elevation: 0,
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue, Colors.blue[800]])),
            child: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Container(
                  child: CarouselSlider(
                    height: 180,
                    reverse: false,
                    items: [1, 2, 3, 4].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1),
                                        spreadRadius: 5.0,
                                        blurRadius: 8.0,
                                        offset: Offset(0, 3))
                                  ],
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                'text $i',
                                style: TextStyle(fontSize: 16.0),
                              ));
                        },
                      );
                    }).toList(),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            'Market',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Top 5',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '24h Vol',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  height: 160,
                  child: Sparkline(
                    data: dataArr,
                    fillMode: FillMode.below,
                    fillColor: Colors.red[200],
                    fillGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue[300], Color.fromRGBO(255, 255, 255, 0)],
                    ),
                    lineWidth: 4.0,
                    lineGradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue[400], Colors.blue[300]],
                    ),
                  ),
                ),
                DateBar(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(child: CountCard(48.5, 'Wallet', 90)),
                      Container(
                        height: 95,
                        width: 1,
                        color: Colors.white30,
                      ),
                      Expanded(child: CountCard(18.0, 'Market', 18.0))
                    ],
                  ),
                )
              ],
            ))));
  }
}

class DateBar extends StatelessWidget {
  List<String> dataArr = ['Day', 'Week', 'Month', 'Year', 'All'];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white24))),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      child: Center(
          child: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Text('Day', style: TextStyle(color: Colors.white)),
          ),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Text('Week', style: TextStyle(color: Colors.white)),
          ),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Text('Month', style: TextStyle(color: Colors.white)),
          ),
          Container(
            margin: EdgeInsets.only(right: 25),
            child: Text('Year', style: TextStyle(color: Colors.white)),
          ),
          Container(
            child: Align(
                alignment: Alignment.centerRight,
                child: Text('All', style: TextStyle(color: Colors.white))),
          ),
        ],
      )),
    );
  }
}

class CountCard extends StatelessWidget {
  CountCard(this.count, this.text, this.press);

  double count = 0;
  String text;
  double press;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Text('+ $count %',
              style: TextStyle(color: Colors.white70, fontSize: 30)),
        ),
        Text(text, style: TextStyle(color: Colors.white70)),
        Container(
            height: 4,
            margin: EdgeInsets.only(top: 25),
            width: 100,
            child: LinearProgressIndicator(
              value: press / 100,
              valueColor: AlwaysStoppedAnimation(Colors.lightBlueAccent),
              backgroundColor: Colors.black26,
            )),
      ],
    ));
  }
}
