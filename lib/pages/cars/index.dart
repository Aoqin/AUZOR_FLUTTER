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
                  child: Ink(
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              blurRadius: 3.0,
                              offset: Offset(2, 2))
                        ]),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black12,
                        backgroundImage: NetworkImage(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1550490846888&di=4e584bc7ce8323498834759f56aff4e1&imgtype=0&src=http%3A%2F%2Fapp.qingdaonews.com%2Fuploads%2Fallimg%2F140828%2F162939D29-5.png'),
                      ),
                      title: Container(
                          child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('川E23121'),
                          ),
                          Text(
                            '2012.12.06',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          )
                        ],
                      )),
                      subtitle: Container(
                        child: Text('测试记性哦洽闻强记阿胶啊里面的'),
                      ),
                      onTap: () {},
                    ),
                  )),
              Container(
                child: Text('昨天'),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                  child: Ink(
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              blurRadius: 3.0,
                              offset: Offset(2, 2))
                        ]),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black12,
                        backgroundImage: NetworkImage(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551085799&di=1e1fa0b61e2e27c7563e627ceff60dbc&imgtype=jpg&er=1&src=http%3A%2F%2Fdealer0.autoimg.cn%2Fdl%2F1566%2Fnewsimg%2F130528044887678995.jpg'),
                      ),
                      title: Container(
                          child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('川E23121'),
                          ),
                          Text(
                            '2012.12.06',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          )
                        ],
                      )),
                      subtitle: Container(
                        child: Text('测试记性哦洽闻强记阿胶啊里面的'),
                      ),
                      onTap: () {},
                    ),
                  )),
              Container(
                child: Text('更早'),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                  child: Ink(
                    // color: Colors.white,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                              blurRadius: 3.0,
                              offset: Offset(2, 2))
                        ]),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.black12,
                        backgroundImage: NetworkImage(
                            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1551087459&di=2e894d135e6b6395a70236b689bb1ad5&imgtype=jpg&er=1&src=http%3A%2F%2Fs11.sinaimg.cn%2Fmiddle%2F5f4a17dbg67aff3f7d5ea%26amp%3B690'),
                      ),
                      title: Container(
                          child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text('川E23121'),
                          ),
                          Text(
                            '2012.12.06',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          )
                        ],
                      )),
                      subtitle: Container(
                        child: Text('测试记性哦洽闻强记阿胶啊里面的'),
                      ),
                      onTap: () {},
                    ),
                  )),
            ],
          ),
        ));
  }
}
