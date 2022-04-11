import 'package:flutter/material.dart';

class NamePalette extends StatelessWidget {
  final String player1Name;
  final String player2Name;
  final int player1RoundsWon;
  final int player2RoundsWon;

  const NamePalette({
    Key? key,
    required this.player1Name,
    required this.player2Name,
    required this.player1RoundsWon,
    required this.player2RoundsWon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green[400],
          ),
          width: 400,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              namePalette(player1Name, player1RoundsWon),
              Center(
                child: Container(
                  width: 5,
                  height: 80,
                  color: Colors.black,
                ),
              ),
              namePalette(player2Name, player2RoundsWon),
            ],
          ),
        ),
      ),
    );
  }
}

Widget namePalette(String playerName,int playerRoundsWon) {
  return Expanded(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            playerName,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red[800],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Text(
                playerRoundsWon.toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
