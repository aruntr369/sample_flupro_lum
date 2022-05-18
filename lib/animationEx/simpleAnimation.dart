import 'package:flutter/material.dart';
import 'package:simple_animations/stateless_animation/play_animation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: SimpleAnimation(),
      ),
    ),
  ));
}

class SimpleAnimation extends StatelessWidget {
  const SimpleAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(
      builder: (context, child, value) {
        return Container(
          width: 200,
          height: 200,
          color: Colors.green,
        );
      },
      tween: Tween(begin: 0.0, end: 150),
      duration: const Duration(seconds: 5),
      curve: Curves.easeIn,
    );
  }
}
