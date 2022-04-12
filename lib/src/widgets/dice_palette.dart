import 'package:flutter/material.dart';

class DicePalette extends StatelessWidget {
  final int dice1Number;
  final int dice2Number;
  // String image1Path;
  // String image2Path;
  final Function() changeDice1Num;
  final Function() changeDice2Num;
  final bool canDice1Roll;
  final bool canDice2Roll;

  const DicePalette({
    Key? key,
    required this.dice1Number,
    required this.dice2Number,
    required this.changeDice1Num,
    required this.changeDice2Num,
    required this.canDice1Roll,
    required this.canDice2Roll,
    // required this.image1Path,
    // required this.image2Path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 3,
            color: Colors.green.shade400,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: canDice1Roll ? changeDice1Num : null,
                  child: Image.asset(
                    'assets/icons/dice$dice1Number.png',
                  ),
                ),
              ),
            ),
            Container(
              width: 5,
              height: 120,
              color: Colors.green[400],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: canDice2Roll ? changeDice2Num: null,
                  child: Image.asset(
                    'assets/icons/dice$dice2Number.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
