import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  final Widget child;


  FadeAnimation(this.child);

  @override
  Widget build(BuildContext context) {
    return PlayAnimationBuilder<double>(
      tween: Tween<double>(begin: 0.0, end: 1.0), // You can adjust the range as needed.
      duration: const Duration(milliseconds: 800),
      builder: (context, value, child) {
        final opacity = value;
        final translateY = value;
        return Opacity(
        opacity: opacity,
        child: Transform.translate(
        offset: Offset(0, translateY),
        child: child,
        ),
        );
      },
      child: child,
      onCompleted: () {
        // do something ...
      },
    );

  }
}
