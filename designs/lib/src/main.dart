import 'package:flutter/material.dart';

import 'package:designs/src/pages/scroll_page.dart';
import 'package:designs/src/pages/basic_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Designs',
      debugShowCheckedModeBanner: false,
      initialRoute: 'scroll',
      routes: {
        'basic' : (BuildContext context) => BasicPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
      },
    );
  }
}