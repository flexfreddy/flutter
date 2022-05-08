import 'package:flutter/material.dart';
import 'package:reto1/src/pages/page.dart';

class AppReto1 extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Pagina(),
      ),
    );
  }
}
