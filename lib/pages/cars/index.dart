import 'package:flutter/material.dart';
import 'package:auzor/components/searchBar.dart';

class CarsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new SearchBar(),
          automaticallyImplyLeading: false,
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.store),
                onPressed: () => Navigator.pushNamed(context, '/home')),
            new IconButton(
                icon: Icon(Icons.person),
                onPressed: () => Navigator.pushNamed(context, '/personal'))
          ],
        ),
        body: Container(
          // decoration: BoxDecoration(color: Colors.white),
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'http://img.hb.aicdn.com/8152b06068505ce0c2cf78d10cdc69249487f9f5300b-WsXt2V_fw658'),
                ),
                title: Text('阿斯顿马丁'),
                subtitle: Text('副标题'),
                trailing: Icon(Icons.chevron_right),
                onTap: () {},
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'http://img.hb.aicdn.com/8152b06068505ce0c2cf78d10cdc69249487f9f5300b-WsXt2V_fw658'),
                ),
                title: Text('阿斯顿马丁'),
                subtitle: Text('副标题'),
                trailing: IconButton(
                    icon: Icon(Icons.chevron_right), onPressed: () {}),
              ),
            ],
          ),
        ));
  }
}
