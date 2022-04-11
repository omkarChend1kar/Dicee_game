import 'package:dicee/src/screens/game_screen.dart';
import 'package:dicee/src/screens/player_names.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool shouldPlay = false;
  String player1Name = "player1";
  String player2Name = "player2";
  // int dice1Number = 3;
  // int dice2Number = 6;
  // late String image1Path = 'assets/icons/dice$dice1Number.png';
  // late String image2Path = 'assets/icons/dice$dice2Number.png';
  void shouldStart() {
    setState(() {
      shouldPlay = true;
    });
  }

  void restartGame() {
    // if (mounted) {
    setState(() {
      shouldPlay = false;
    });
    // }
  }

  void updateName1(value) {
    setState(() {
      player1Name = value;
    });
  }

  void updateName2(value) {
    setState(() {
      player2Name = value;
    });
  }

  // void changeDice1Num() {
  //   setState(() {
  //     dice1Number = Random().nextInt(6) + 1;
  //     image1Path = 'assets/icons/dice$dice1Number.png';
  //   });
  // }

  // void changeDice2Num() {
  //   setState(() {
  //     dice2Number = Random().nextInt(6) + 1;
  //     image2Path = 'assets/icons/dice$dice2Number.png';
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'Dicee',
            style: TextStyle(color: Colors.green[400]),
          ),
          centerTitle: true,
        ),
        body: !shouldPlay
            ? PlayerNames(
                shouldStart: shouldStart,
                updateName1: updateName1,
                updateName2: updateName2,
              )
            : GameScreen(
                restartGame: restartGame,
                player1Name: player1Name,
                player2Name: player2Name,
              ),
      ),
    );
  }
}
