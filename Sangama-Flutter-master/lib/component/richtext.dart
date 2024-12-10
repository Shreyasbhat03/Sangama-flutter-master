import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Rich_Text extends StatefulWidget {
  const Rich_Text({super.key});

  @override
  State<Rich_Text> createState() => _Rich_TextState();
}

class _Rich_TextState extends State<Rich_Text> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left, // Ensure the entire text block is left-aligned
      text: TextSpan(
        text: 'Need an account?\n', // Add a line break to separate "Need an account?" and "Register"
        style: const TextStyle(
          fontSize: 28.0, // Set font size to 28.0
          fontWeight: FontWeight.bold, // Keep text bold
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: 'Register', // Underlined Register text
            style: const TextStyle(
              fontSize: 28.0, // Set font size to 28.0
              fontWeight: FontWeight.bold, // Keep text bold
              color: Colors.white,
              decoration: TextDecoration.underline, // Underline
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Perform the registration action or navigate to registration if needed
              },
          ),
          TextSpan(
            text: '\nor\nSign in with\n', // Add line breaks to separate "QR code" from the previous text
            style: const TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          TextSpan(
            text: 'QR code.', // Underlined QR code text
            style: const TextStyle(
              fontSize: 28.0, // Set font size to 28.0
              fontWeight: FontWeight.bold, // Keep text bold
              color: Colors.white,
              decoration: TextDecoration.underline, // Underline
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Handle QR code action if needed, or leave it blank
              },
          ),
        ],
      ),
    );
  }
}
