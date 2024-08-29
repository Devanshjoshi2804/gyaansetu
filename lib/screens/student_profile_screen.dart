import 'package:flutter/material.dart';
import 'package:gyaan_setu/screens/crossword_game.dart';
import 'my_account_page.dart'; // Import your MyAccountPage
import 'courses.dart'; // Ensure this points to the correct location
import 'whiteboard_page.dart'; // Ensure this points to the correct location

class StudentProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Handle back button press
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Picture and Info
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/default_avatar.png'), // Ensure this asset exists
            ),
            SizedBox(height: 10),
            Text(
              "User_name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              "+91 98765 43210",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Text(
              "abc@edu.com",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 20),

            // My Account, Privacy, Settings Options
            _buildProfileOption(
              icon: Icons.person,
              title: "My Account",
              onTap: () {
                // Navigate to My Account Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAccountPage()), // Link to MyAccountPage
                );
              },
            ),
            _buildProfileOption(
              icon: Icons.privacy_tip,
              title: "Privacy",
              onTap: () {
                // Handle Privacy tap
              },
            ),
            _buildProfileOption(
              icon: Icons.settings,
              title: "Settings",
              onTap: () {
                // Handle Settings tap
              },
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Handle Sign Out
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Sign Out",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "About App\nVersion 1.0.0.0",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildProfileOption({required IconData icon, required String title, required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title, style: TextStyle(fontSize: 18)),
      trailing: Icon(Icons.arrow_forward_ios, color: Colors.black, size: 16),
      onTap: onTap,
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 4, // Assuming Profile is the 5th item
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: (index) {
        switch (index) {
          case 0:
            // Navigate to Courses page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Courses()),
            );
            break;
          case 1:
            // Navigate to Whiteboard page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => WhiteboardPage()), // Ensure WhiteboardPage is correctly imported
            );
            break;
          case 4:
            // Navigate to Profile page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => StudentProfileScreen()), // This is the current page, you might not need to navigate here
            );
            break;
          case 3:
            // Navigate to Profile page
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => CrosswordHomePage()), // This is the current page, you might not need to navigate here
            );
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: "Courses",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
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
    );
  }
}
