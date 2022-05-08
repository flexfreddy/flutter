import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, 'one'),
                  child: const Text("Ropero 588")),
              ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, 'two'),
                  child: const Text("Arsenal 3D"))
            ],
          ),
        ),
      ),
    );
  }
}
