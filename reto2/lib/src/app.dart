import 'package:flutter/material.dart';
import 'package:reto2/src/pages/main_app.dart';
import 'package:reto2/src/pages/one_page.dart';
import 'package:reto2/src/pages/two_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
      routes: {
        'one': (context) => const OnePage(),
        'two': (context) => const TwoPage(),
      },
    );
  }
}