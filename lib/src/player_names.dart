import 'package:dicee/src/game_screen.dart';
import 'package:flutter/material.dart';

class PlayerNames extends StatefulWidget {
  const PlayerNames({Key? key}) : super(key: key);

  @override
  State<PlayerNames> createState() => _PlayerNamesState();
}

class _PlayerNamesState extends State<PlayerNames> {
  final _player1Name = TextEditingController();
  final _player2Name = TextEditingController();
  bool validate = false;
  void allowStart() {
    setState() {
      (_player1Name.text.isEmpty && _player2Name.text.isEmpty)
          ? validate = true
          : validate = false;
      // validate ? const GameScreen() : const PlayerNames();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              playIcon(),
              player1(_player1Name, validate),
              player2(_player2Name, validate),
              startPlaying(allowStart,_player1Name,_player2Name),
            ],
          ),
        ),
        width: 300,
        height: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 3,
              color: Colors.green.shade400,
            )),
      ),
    );
  }
}

Widget player1(TextEditingController _player1Name, bool validate) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(45, 10, 45, 0),
    child: TextField(
      controller: _player1Name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.green[400],
      ),
      decoration: InputDecoration(
        labelText: 'Player 1',
        hintText: 'Enter Your Name.',
        errorText: validate ? 'Player name is required': null,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[400],
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[400],
        ),
        errorStyle: TextStyle(color: Colors.red[400],)
      ),
    ),
  );
}

Widget player2(TextEditingController _player2Name, bool validate) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(45, 10, 45, 20),
    child: TextFormField(
      controller: _player2Name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.green[400],
      ),
      decoration: InputDecoration(
        labelText: 'Player 2',
        hintText: 'Enter Your Name.',
        errorText: validate ? 'Player name is required' : null,
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
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
    child: Image.asset(
      'assets/images/dice.png',
      width: 50,
      height: 50,
      color: Colors.green[400],
    ),
  );
}

Widget startPlaying(Function allowStart,TextEditingController _player1Name,TextEditingController _player2Name) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: InkWell(
      onTap: () {
        allowStart;
        // print(_player1Name.text.isEmpty && _player2Name.text.isEmpty);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green[400],
        ),
        width: 250,
        height: 50,
        // color: Colors.green[400],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 5, 10),
              child: Text(
                'Start',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(Icons.arrow_right_alt_sharp),
          ],
        ),
      ),
    ),
  );
}
