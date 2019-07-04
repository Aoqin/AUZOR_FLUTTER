import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  double opacityVal = 0.1;

  @override
  Widget build(BuildContext context) {
    return (new Container(
        padding: EdgeInsets.all(0.0),
        margin: EdgeInsets.only(right: 30.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, opacityVal),
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
        child: Container(
          height: 32.0,
          child: TextField(
            style: TextStyle(color: Color(0xFFFFFFFF)),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 8.0,right: 18.0),
                border: InputBorder.none,
                prefixIcon: IconButton(
                    padding: EdgeInsets.only(top: 3.0,right: 1.0),
                    icon: Icon(Icons.search,
                        color: Color.fromRGBO(255, 255, 255, .675)),
                    onPressed: () => opacityVal = 0.15)),
          ),
        )));
  }
}
