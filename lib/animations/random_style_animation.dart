import 'dart:math' as math;

import 'package:flutter/material.dart';

class RandomStyleAnimation extends StatefulWidget {
  @override
  _RandomStyleAnimationState createState() => _RandomStyleAnimationState();
}

class _RandomStyleAnimationState extends State<RandomStyleAnimation> {
  Color color = Colors.black;
  TextStyle textStyle = TextStyle(
    fontSize: 30,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Style Animation'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              child: Text('Simform'),
              style: textStyle,
              curve: Curves.easeIn,
              duration: Duration(seconds: 1),
              onEnd: _randomAnimation,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _randomAnimation,
              child: Text('Animate'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _randomAnimation() {
    setState(() {
      color =
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1);
      var randomNum = math.Random().nextInt(40).toDouble();
      textStyle = TextStyle(
        fontSize: randomNum,
        color: color,
        fontStyle: (randomNum % 2) == 0 ? FontStyle.italic : FontStyle.normal,
      );
    });
  }
}
