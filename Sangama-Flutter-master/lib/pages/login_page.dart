import 'package:flutter/material.dart';
import 'package:sangama_login/views/login_view.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // Use an empty AppBar, only for the back button
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,  // Make the AppBar background transparent
        elevation: 0, // Removes the shadow of the AppBar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // The back arrow
          onPressed: () {
            Navigator.pop(context);  // Navigate back to the previous screen
          },
        ),
      ),
      backgroundColor: const Color(0xFF294C74),  // Background color of the LoginPage
      body: Login_View(),  // Your Login_View widget
    );
  }
}
