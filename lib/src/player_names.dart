import 'package:flutter/material.dart';

class PlayerNames extends StatefulWidget {
  const PlayerNames({Key? key}) : super(key: key);

  @override
  State<PlayerNames> createState() => _PlayerNamesState();
}

class _PlayerNamesState extends State<PlayerNames> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            playIcon(),
            player1(),
            player2(),
          ],
        ),
        width: 300,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:Border.all(
            width: 3,
            color:Colors.green.shade400,
          )
        ),
      ),
    );
  }
}

Widget player1() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(45, 10, 45, 0),
    child: TextField(
      decoration: InputDecoration(
        labelText: 'Player 1',
        hintText: 'Enter Your Name.',
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[400],
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[400],
        ),

      ),
    ),
  );
}

Widget player2() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(45, 10, 45, 20),
    child: TextField(
      decoration: InputDecoration(
        labelText: 'Player 2',
        hintText: 'Enter Your Name.',
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[400],
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[400],
        ),
      ),
    ),
  );
}

Widget playIcon() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Image.asset(
        'assets/images/dice.png',
        width: 50,
        height: 50,
        color: Colors.green[400],
      ),
    ),
  );
}
