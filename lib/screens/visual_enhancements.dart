import 'package:flutter/material.dart';

class VisualEnhancements {
  static Widget animatedBackground(AnimationController controller) {
    return FadeTransition(
      opacity: controller.drive(
        Tween(begin: 0.5, end: 1.0).chain(CurveTween(curve: Curves.easeInOut)),
      ),
      child: Container(
        color: Colors.purpleAccent.withOpacity(0.2),
      ),
    );
  }
}
