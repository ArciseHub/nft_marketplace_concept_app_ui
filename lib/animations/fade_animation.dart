import 'package:flutter/material.dart';

class FadeAnimation extends StatelessWidget {
  const FadeAnimation({
    Key? key,
    required this.child,
    this.begin = 0,
    this.end = 1,
    this.intervalStart = 0,
    this.intervalEnd = 1,
    this.duration = const Duration(milliseconds: 3000),
    this.curve = Curves.fastLinearToSlowEaseIn,
  }) : super(key: key);

  //Animation from value
  //Default value 0
  final double begin;
  //Animation to value
  //Default value 1
  final double end;
  //Animation duration
  //Default is 750ms
  final Duration duration;
  //Animation delay
  //Default is 0
  final double intervalStart;
  //Animation delay
  //Default is 1
  final double intervalEnd;
  //Animation curve
  //Default is Curves.fastOutSlowIn
  final Curve curve;

  //This widget will be animated
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: begin, end: end),
      duration: duration,
      curve: Interval(intervalStart, intervalEnd, curve: curve),
      child: child,
      builder: (BuildContext context, double? value, Widget? child) {
        return Opacity(
          opacity: value!,
          child: child,
        );
      },
    );
  }
}
