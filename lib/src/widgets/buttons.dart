import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.replay,
    required this.restart,
  }) : super(key: key);
  final Function() replay;
  final Function() restart;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: button('Replay',replay),
            )),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: button('Restart',restart),
            )),
          ],
        ),
      ),
    );
  }
}

Widget button(String name, Function() onpressed) {
  return InkWell(
    onTap: onpressed,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 3,
          color: Colors.green.shade400,
        ),
      ),
      // width: 250,
      // height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.green[400],
              ),
            ),
          ),
          // Icon(
          //   Icons.icon,
          //   color: Colors.green[400],
          // ),
        ],
      ),
    ),
  );
}

// String get restartIcon => 'restart_alt_sharp';
// String get replayIcon => 'replay_alt_sharp';
