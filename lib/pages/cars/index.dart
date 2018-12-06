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
              Container(
                child: Text('今天'),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 3.0,
                          offset: Offset(2, 2))
                    ]),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage('url'),
                  ),
                  title: Container(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('川E23121'),
                      ),
                      Text(
                        '2012.12.06',
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      )
                    ],
                  )),
                  subtitle: Container(
                    child: Text('测试记性哦洽闻强记阿胶啊里面的'),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                child: Text('昨天'),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 3.0,
                          offset: Offset(2, 2))
                    ]),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage('url'),
                  ),
                  title: Container(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('川E23121'),
                      ),
                      Text(
                        '2012.12.06',
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      )
                    ],
                  )),
                  subtitle: Container(
                    child: Text('测试记性哦洽闻强记阿胶啊里面的'),
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                child: Text('更早'),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          blurRadius: 3.0,
                          offset: Offset(2, 2))
                    ]),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage('url'),
                  ),
                  title: Container(
                      child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text('川E23121'),
                      ),
                      Text(
                        '2012.12.06',
                        style: TextStyle(fontSize: 12, color: Colors.black54),
                      )
                    ],
                  )),
                  subtitle: Container(
                    child: Text('测试记性哦洽闻强记阿胶啊里面的'),
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ));
  }
}
