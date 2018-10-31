import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (new Container(
      height: 32.0,
      margin: EdgeInsets.only(right: 30.0),
      decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, .15),
          borderRadius: BorderRadius.all(Radius.circular(16.0))),
      child: TextField(
        style: TextStyle(color: Color(0xFFFFFFFF)),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 6.0),
            
            prefixIcon: IconButton(
                padding: EdgeInsets.only(top: 2.0),
                icon: Icon(Icons.search,color: Color.fromRGBO(255, 255, 255, .675)),
                onPressed: () => {})),
      ),
    ));
  }
}
