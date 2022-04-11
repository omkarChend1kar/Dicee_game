import 'package:flutter/material.dart';

class PlayerNames extends StatefulWidget {
  final Function shouldStart;
  final Function updateName1;
  final Function updateName2;

  const PlayerNames({
    Key? key,
    required this.shouldStart,
    required this.updateName1,
    required this.updateName2,
  }) : super(key: key);
  @override
  State<PlayerNames> createState() => _PlayerNamesState();
}

class _PlayerNamesState extends State<PlayerNames> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              playIcon(),
              player1(widget.updateName1),
              player2(widget.updateName2),
              startPlaying(
                formKey,
                widget.shouldStart,
              ),
            ],
          ),
        ),
        width: 300,
        height: 370,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 3,
            color: Colors.green.shade400,
          ),
        ),
      ),
    );
  }
}

Widget player1(Function updateName1) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(45, 10, 45, 0),
    child: TextFormField(
      // controller: _player1Name,
      validator: (value) {
        if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
          return 'Player Name is required';
        }
        return null;
      },
      onSaved: (value) {
        updateName1(value);
      },
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.green[400],
      ),
      decoration: InputDecoration(
        labelText: 'Player 1',
        hintText: 'Enter Your Name.',
        // errorText: 'Player name is required' : null,
        labelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[400],
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.green[400],
        ),
        errorStyle: TextStyle(
          color: Colors.red[400],
        ),
      ),
    ),
  );
}

Widget player2(Function updateName2) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(45, 10, 45, 20),
    child: TextFormField(
      validator: (value) {
        if (value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
          return 'Player Name is required';
        }
        return null;
      },
      onSaved: (value) {
        updateName2(value);
      },
      // controller: _player2Name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.green[400],
      ),
      decoration: InputDecoration(
        labelText: 'Player 2',
        hintText: 'Enter Your Name.',
        // errorText: 'Player name is required',
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

Widget startPlaying(GlobalKey<FormState> formKey, Function shouldStart) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: InkWell(
      onTap: () {
        if (formKey.currentState!.validate()) {
          shouldStart();
          formKey.currentState!.save();
          // } else {
          //   formKey.currentState!.reset();
        }
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
