import 'package:flutter/material.dart';

Widget _buildCluesSection() {
  return Column(
    children: [
      Text(
        'Clues',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            title: Text('Clue 1: Gujarati word for "Sun"'),
          ),
          ListTile(
            title: Text('Clue 2: Gujarati word for "Moon"'),
          ),
          // Add more clues as needed
        ],
      ),
    ],
  );
}
