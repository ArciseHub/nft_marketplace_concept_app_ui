import 'package:flutter/material.dart';

class ScaleScreenTransition extends StatefulWidget {
  const ScaleScreenTransition({Key? key, required this.screenTransitionTo})
      : super(key: key);
  final Widget screenTransitionTo;
  @override
  State<ScaleScreenTransition> createState() => _ScaleScreenTransitionState();
}

class _ScaleScreenTransitionState extends State<ScaleScreenTransition>
    with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;
  bool _active = false;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.push(context,
                  MaterialPageRoute(builder: (_) => widget.screenTransitionTo))
              .then((_) {
            _scaleController.reverse();
          });
        }
      });
    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 30.0).animate(_scaleController);
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) => Transform.scale(
          scale: _scaleAnimation.value,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: const Color(0xff3000ff),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Icons.keyboard_arrow_right,
              color: (_active == true) ? const Color(0xff3000ff) : Colors.white,
              size: 35,
            ),
          ),
        ),
      ),
    );
  }

  void _onTap() {
    _scaleController.forward();
    _active = !_active;
  }
}
