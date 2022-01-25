import 'package:animated_textstyle_demo/animations/random_style_animation.dart';
import 'package:animated_textstyle_demo/animations/size_and_color_animation.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Default TextStyle Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => SizeAndColorAnimation()));
                },
                child: Text('Size and Color Animation')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => RandomStyleAnimation()));
                },
                child: Text('Random Style Animation')),
          ],
        ),
      ),
    );
  }
}
