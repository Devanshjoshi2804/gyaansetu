import 'package:flutter/material.dart';

class LeaderboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leaderboard'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('1. Player A - 2 mins 30 secs'),
          ),
          ListTile(
            title: Text('2. Player B - 3 mins 15 secs'),
          ),
          // Add more leaderboard entries
        ],
      ),
    );
  }
}
