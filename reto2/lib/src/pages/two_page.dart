import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arsenal Living 3D"),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://arsenal.cgtrader.com/product-photography-reimagined',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
