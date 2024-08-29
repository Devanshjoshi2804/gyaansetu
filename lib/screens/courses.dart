import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart'; // For CupertinoIcons
import 'mathematics_page.dart'; // Import your MathematicsPage
import 'science_page.dart'; // Import your SciencePage
import 'alphabets_page.dart'; // Import your SciencePage
import 'numbers_page.dart'; // Import your SciencePage

class Courses extends StatefulWidget {
  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // Handle navigation based on selected index
      switch (index) {
        case 0:
          // Current page (Courses)
          break;
        case 1:
          // Navigate to Whiteboard page
          Navigator.pushReplacementNamed(context, '/whiteboard');
          break;
        case 2:
          // Navigate to Home page
          Navigator.pushReplacementNamed(context, '/home');
          break;
        case 3:
          // Navigate to Exercise page
          Navigator.pushReplacementNamed(context, '/exercise');
          break;
        case 4:
          // Navigate to Profile page
          Navigator.pushReplacementNamed(context, '/profile');
          break;
        case 5:
          // Navigate to Mathematics page
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => MathematicsPage()),
          );
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFB2A4FF), Color(0xFFE7CFFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Section (Welcome Message and Flag Icon)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alan",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Start Your Learnings!",
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/flag.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // "Your Lessons" Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Your Lessons",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Course Cards Section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      _buildCourseCard(
  icon: Icons.book,
  title: "Alphabets",
  progress: 0.74,
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AlphabetsPage(),
      ),
    );
  },
),
                      _buildCourseCard(
  icon: Icons.confirmation_number,
  title: "Numbers",
  progress: 0.74,
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NumbersPage(),
      ),
    );
  },
),

                      _buildCourseCard(
                        icon: Icons.calculate,
                        title: "Mathematics",
                        progress: 0.45,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MathematicsPage(),
                            ),
                          );
                        },
                      ),
                      _buildCourseCard(
                        icon: Icons.science,
                        title: "Science",
                        progress: 0.32,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SciencePage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Courses",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bars), // Use CupertinoIcons for a board-like icon
            label: "Whiteboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: "Exercise",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard({
    required IconData icon,
    required String title,
    required double progress,
    VoidCallback? onTap, // Optional onTap callback
  }) {
    return GestureDetector(
      onTap: onTap, // Use the onTap callback
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Course Icon
            Icon(
              icon,
              size: 50,
              color: Colors.purpleAccent,
            ),
            SizedBox(height: 10),
            // Course Title
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),
            // Progress Text
            Text(
              "${(progress * 100).toStringAsFixed(0)}% completed",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            // Progress Indicator
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.purpleAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
