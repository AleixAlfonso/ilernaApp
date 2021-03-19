import 'package:flutter/material.dart';
import 'package:ilerna_app/pages/login_page.dart';
import 'package:ilerna_app/pages/welcome_page.dart';

import 'pages/home_page.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'wellcomePage',
      routes: <String, WidgetBuilder>{
        'wellcomePage': (BuildContext context) => WellcomePage(),
        'homePage': (BuildContext context) => HomePage(),
        'loginPage': (BuildContext context) => LoginPAge(),
      },
      debugShowCheckedModeBanner: false,
      title: 'IlernaApp',
      home: HomePage(),
    );
  }
}
