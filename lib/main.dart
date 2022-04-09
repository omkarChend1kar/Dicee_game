import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 100),
          ),
        ),
      ),
    );
  }
}
