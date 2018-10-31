import 'package:flutter/material.dart';

import 'package:auzor/app.dart';
import 'package:auzor/pages/login/login.dart';
import 'package:auzor/pages/home/index.dart';

void main() => runApp(MaterialApp(
      home: Auzor(),
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage()
      },
    ));
