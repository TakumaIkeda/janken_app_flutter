import 'dart:math' as math;
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(this.hand);

  final int hand;

  String translateHand(int hand) {
    switch (hand) {
      case 0:
        return '✊';
        break;
      case 1:
        return '✌';
        break;
      default:
        return '✋';
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final rand = new math.Random();
    final int enemyHand = rand.nextInt(3);
    final int isWin = (this.hand - enemyHand + 3) % 3;
    String isWinStr;
    String enemyHandStr = translateHand(enemyHand);
    String myHandStr = translateHand(this.hand);
    switch (isWin) {
      case 0:
        isWinStr = 'あいこ';
        break;
      case 1:
        isWinStr = '負け';
        break;
      case 2:
        isWinStr = '勝ち';
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('結果'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Text(
                isWinStr,
                style: TextStyle(fontSize: 50),
              ),
            ),
            Text(
              '相手',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              enemyHandStr,
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Text(
                myHandStr,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Text(
              '自分',
              style: TextStyle(
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
