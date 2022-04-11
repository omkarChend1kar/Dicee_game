import 'package:flutter/material.dart';

class ScorePalette extends StatelessWidget {
  const ScorePalette({
    Key? key,
    required this.playe1Score,
    required this.playe2Score,
  }) : super(key: key);
  final int playe1Score;
  final int playe2Score;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.green[400],
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Scorebourd',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Container(
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(
                //       vertical: 5,
                //       horizontal: 10,
                //     ),
                //     child: Text(
                //       playe1Score.toString(),
                //       style: const TextStyle(
                //         fontSize: 35,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     color: Colors.black,
                //   ),
                // ),
                scoreContainer(playe1Score),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      width: 5,
                      height: 50,
                      color: Colors.black,
                    ),
                  ),
                ),
                scoreContainer(playe2Score),
                // Container(
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(
                //       vertical: 5,
                //       horizontal: 10,
                //     ),
                //     child: Text(
                //       playe1Score.toString(),
                //       style: const TextStyle(
                //         fontSize: 35,
                //         fontWeight: FontWeight.bold,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     color: Colors.black,
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget scoreContainer(int playerScore) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: Text(
        playerScore.toString(),
        style: const TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: Colors.black,
    ),
  );
}
