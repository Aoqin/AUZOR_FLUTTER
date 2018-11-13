import 'package:flutter/material.dart';
import 'package:auzor/components/searchBar.dart';
import 'package:auzor/components/receiveCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              expandedHeight: 160.0,
              title: new SearchBar(),
              automaticallyImplyLeading: false,
              actions: <Widget>[
                new IconButton(
                    icon: Icon(Icons.directions_car), onPressed: () => {}),
                new IconButton(icon: Icon(Icons.person), onPressed: () => {})
              ],
            ),
            SliverFixedExtentList(
              itemExtent: 180,
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return ReceiveCard();
              }, childCount: 10),
            ),
          ],
        ));
  }
}
