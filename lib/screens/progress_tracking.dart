import 'package:flutter/material.dart';

class ProgressTracking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: LinearProgressIndicator(
        value: 0.5,  // Example progress value
        backgroundColor: Colors.grey[300],
        color: Colors.purpleAccent,
      ),
    );
  }
}
