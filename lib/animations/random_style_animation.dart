import 'dart:math' as math;

import 'package:flutter/material.dart';

class RandomStyleAnimation extends StatefulWidget {
  @override
  _RandomStyleAnimationState createState() => _RandomStyleAnimationState();
}

class _RandomStyleAnimationState extends State<RandomStyleAnimation> {
  Color color = Colors.black;
  late TextStyle textStyle;

  @override
  void initState() {
    super.initState();
    textStyle = TextStyle(
      fontSize: 30,
      color: color,
    );
  }

  void colorAnimation() {
    setState(() {
      color =
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1);
      textStyle = TextStyle(
        fontSize: math.Random().nextInt(40).toDouble(),
        color: color,
        fontStyle: FontStyle.italic,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Style Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              child: Text(
                'Animations are cool',
              ),
              style: textStyle,
              curve: Curves.easeIn,
              duration: Duration(seconds: 1),
              onEnd: () {
                colorAnimation();
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                colorAnimation();
              },
              child: Text('Animate'),
            ),
          ],
        ),
      ),
    );
  }
}
