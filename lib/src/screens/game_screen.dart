import 'dart:math';

import 'package:dicee/src/widgets/buttons.dart';
import 'package:dicee/src/widgets/dice_palette.dart';
import 'package:dicee/src/widgets/name_palette.dart';
import 'package:dicee/src/widgets/score_palette.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  final Function() restartGame;
  final String player1Name;
  final String player2Name;
  // final int dice1Number;
  // final int dice2Number;
  // final Function() changeDice1Num;
  // final Function() changeDice2Num;

  const GameScreen({
    Key? key,
    required this.restartGame,
    required this.player1Name,
    required this.player2Name,
    // required this.changeDice1Num,
    // required this.changeDice2Num,
    // required this.dice1Number,
    // required this.dice2Number,
  }) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  int dice1Number = 1;
  int dice2Number = 1;
  int playe1Score = 0;
  int playe2Score = 0;
  int numberOfDice1Rolls = 0;
  int numberOfDice2Rolls = 0;
  int player1RoundsWon = 0;
  int player2RoundsWon = 0;
  int totalDiceRolls = 0;

  // String image1Path = 'assets/icons/dice$dice1Number.png';
  // String image2Path = 'assets/icons/dice$dice2Number.png';
  void changeDice1Num() {
    if (!(numberOfDice1Rolls > 5)) {
      setState(() {
        dice1Number = Random().nextInt(6) + 1;
        playe1Score += dice1Number;
        numberOfDice1Rolls++;
        totalDiceRolls++;
        // image2Path = 'assets/icons/dice$dice2Number.png';
      });
    } else if (!(totalDiceRolls < 10)) {
      if (playe1Score > playe2Score) {
        setState(() {
          player1RoundsWon++;
          totalDiceRolls = 0;
        });
      } else if(playe1Score < playe2Score){
        setState(() {
          player2RoundsWon++;
          totalDiceRolls = 0;
        });
      }
    }
    print(totalDiceRolls);
  }

  void changeDice2Num() {
    if (!(numberOfDice2Rolls > 5)) {
      setState(() {
        dice2Number = Random().nextInt(6) + 1;
        playe2Score += dice2Number;
        numberOfDice2Rolls++;
        totalDiceRolls++;
        // image2Path = 'assets/icons/dice$dice2Number.png';
      });
    } else if (!(totalDiceRolls < 10)) {
      if (playe1Score > playe2Score) {
        setState(() {
          player1RoundsWon++;
          totalDiceRolls = 0;
        });
      } else if(playe1Score < playe2Score){
        setState(() {
          player2RoundsWon++;
          totalDiceRolls = 0;
        });
      }
    }
  }

  void updateRoundsWon() {
    if (!(numberOfDice1Rolls < 5 && numberOfDice2Rolls < 5)) {}
  }

  void replay() {
    setState(() {
      playe1Score = 0;
      playe2Score = 0;
      dice1Number = 1;
      dice2Number = 1;
      numberOfDice1Rolls = 0;
      numberOfDice2Rolls = 0;
      // totalDiceRolls = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Column(
        children: [
          NamePalette(
            player1Name: widget.player1Name,
            player2Name: widget.player2Name,
            player1RoundsWon: player1RoundsWon,
            player2RoundsWon: player2RoundsWon,
          ),
          DicePalette(
            changeDice1Num: changeDice1Num,
            changeDice2Num: changeDice2Num,
            dice1Number: dice1Number,
            dice2Number: dice2Number,
            // image1Path: image1Path,
            // image2Path: image2Path,
          ),
          ScorePalette(
            playe1Score: playe1Score,
            playe2Score: playe2Score,
          ),
          Buttons(
            replay: replay,
            restart: widget.restartGame,
          ),
        ],
      ),
    );
  }
}
