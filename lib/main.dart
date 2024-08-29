import 'package:flutter/material.dart';
import 'screens/signup_screen.dart'; // Ensure these paths are correct
import 'screens/login_screen.dart';
import 'screens/student_profile_screen.dart';
import 'screens/my_account_page.dart'; // Import the MyAccountPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GyaanSetu',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/', // Define the initial route
      routes: {
        '/': (context) => SignUpScreen(), // SignUpScreen as the initial screen
        '/login': (context) => LoginScreen(), // Define route for login screen
        '/studentProfile': (context) => StudentProfileScreen(), // Define route for student profile screen
        '/account': (context) => MyAccountPage(), // Define route for account page
      },
    );
  }
}
