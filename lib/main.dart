import 'package:dicee/src/player_names.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: const Text("Dicee"),
          centerTitle: true,
          backgroundColor: Colors.black38,
        ),
        body: const SafeArea(
          child: PlayerNames(),
        ),
      ),
    );
  }
}
