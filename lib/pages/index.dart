import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = new PageController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(0, 0, 0, 0.1),
          title: Container(
            width: 200,
            height: 30,
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(Icons.search, size: 20),
                  fillColor: Color.fromRGBO(0, 0, 0, 1),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.5, color: Colors.black12),
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.scanner),
              onPressed: () {},
            )
          ],
          elevation: 0,
        ),
        body: Container(
          child: PageView(
            controller: _pageController,
            children: <Widget>[
              Container(
                child: Center(
                  child: Text('page 1'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('page 2'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('page 3'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('page 4'),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.pages),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        //BottomNavigationBar
        /*
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit),title: Text('cloumn')),
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit),title: Text('cloumn'))
      ]),
      */
        // BottomAppBar

        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _pageController.jumpToPage(0);
                        });
                      },
                      icon: Icon(
                        Icons.school,
                        color: _pageController.page == 0
                            ? Colors.blue
                            : Colors.black38,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _pageController.jumpToPage(1);
                        });
                      },
                      icon: Icon(
                        Icons.school,
                        color: _pageController.page == 1
                            ? Colors.blue
                            : Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _pageController.jumpToPage(2);
                        });
                      },
                      icon: Icon(
                        Icons.school,
                        color: _pageController.page == 2
                            ? Colors.blue
                            : Colors.black38,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          _pageController.jumpToPage(3);
                        });
                      },
                      icon: Icon(
                        Icons.school,
                        color: _pageController.page == 3
                            ? Colors.blue
                            : Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
