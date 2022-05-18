import 'package:flutter/material.dart';

class SizeAndColorAnimation extends StatefulWidget {
  @override
  _SizeAndColorAnimation createState() => _SizeAndColorAnimation();
}

class _SizeAndColorAnimation extends State<SizeAndColorAnimation> {
  bool animate = false;
  TextStyle textStyle = TextStyle(
    fontSize: 30,
    color: Colors.pinkAccent,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size and Color Animation'),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              child: Text(
                'Simform',
              ),
              style: textStyle,
              curve: Curves.bounceIn,
              duration: Duration(seconds: 1),
            ),
            ElevatedButton(
              onPressed: _animateStyle,
              child: Text('animate'),
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.secondary,
              ),
            )
          ],
        ),
      ),
    );
  }

  void _animateStyle() {
    animate = !animate;
    animate
        ? setState(() {
            textStyle = TextStyle(
              fontSize: 20,
              color: Colors.deepPurple,
            );
          })
        : setState(() {
            textStyle = TextStyle(
              fontSize: 30,
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
            );
          });
  }
}
