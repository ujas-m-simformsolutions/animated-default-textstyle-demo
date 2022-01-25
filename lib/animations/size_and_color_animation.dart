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
              curve: Curves.bounceIn,
              duration: Duration(seconds: 1),
            ),
            ElevatedButton(
              onPressed: () {
                animate = !animate;
                animate
                    ? setState(() {
                        textStyle = TextStyle(
                          fontSize: 20,
                          color: Colors.deepPurple,
                        );
                      })
                    : setState(
                        () {
                          textStyle = TextStyle(
                            fontSize: 30,
                            color: Colors.pinkAccent,
                            fontWeight: FontWeight.bold,
                          );
                        },
                      );
              },
              child: Text('animate'),
            )
          ],
        ),
      ),
    );
  }
}
