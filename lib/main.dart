import 'package:flutter/material.dart';

import 'package:auzor/app.dart';
import 'package:auzor/pages/login/login.dart';
import 'package:auzor/pages/home/index.dart';
import 'package:auzor/pages/personal/index.dart';
import 'package:auzor/pages/cars/index.dart';
import 'package:auzor/pages/receive/index.dart';
import 'package:auzor/pages/licensePlate/index.dart';

void main() => runApp(MaterialApp(
      home: Auzor(),
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/personal': (context) => PersonalPage(),
        '/cars': (context) => CarsPage(),
        '/receive': (context) => ReceivePage(),
        '/licensePlate': (context) => LicensePlatePage()
      },
    ));
