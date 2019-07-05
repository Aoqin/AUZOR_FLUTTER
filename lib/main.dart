import 'package:flutter/material.dart';

import 'package:auzor/app.dart';
import 'package:auzor/pages/login/login.dart';
import 'package:auzor/pages/index.dart';
import 'package:auzor/pages/saibeier/index.dart';

void main() => runApp(MaterialApp(
      home: Auzor(),
      //路由
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/saibeier':(context) => SaiberPage()
      },
      //主题样式
      theme: ThemeData(),
    ));
