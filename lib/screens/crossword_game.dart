import 'package:flutter/material.dart';
import 'clue_section.dart';
import 'answer_validation.dart';
import 'progress_tracking.dart';
import 'leaderboard.dart';
import 'visual_enhancements.dart';

void main() => runApp(CrosswordGame());

class CrosswordGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gujarati Crossword Game',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: CrosswordHomePage(),
    );
  }
}

class CrosswordHomePage extends StatefulWidget {
  @override
  _CrosswordHomePageState createState() => _CrosswordHomePageState();
}

class _CrosswordHomePageState extends State<CrosswordHomePage> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gujarati Crossword'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        children: [
          Expanded(child: _buildCluesSection()),  // Clue Section
          Expanded(child: _buildCrosswordGrid()),  // Crossword Grid
          _buildSubmitButton(),  // Submit Button
          ProgressTracking(),  // Progress Tracking
        ],
      ),
    );
  }

  Widget _buildCrosswordGrid() {
    // Implement the crossword grid here
    return Center(
      child: Text(
        'Crossword Grid Here',
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: () {
          if (checkAnswers()) {
            showDialog(
              context: context,
              builder: (context) => _buildSuccessDialog(context),
            );
          }
        },
        child: Text('Submit'),
      ),
    );
  }

  Widget _buildSuccessDialog(BuildContext context) {
    return AlertDialog(
      title: Text('Congratulations!'),
      content: Text('You completed the crossword!'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            // Navigate to the leaderboard
            Navigator.of(context).push(MaterialPageRoute(builder: (_) => LeaderboardPage()));
          },
          child: Text('View Leaderboard'),
        ),
      ],
    );
  }
}
