import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.deepPurple,
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
        bodyText1: TextStyle(fontSize: 18, color: Colors.grey[700]),
      ),
    );
  }
}
