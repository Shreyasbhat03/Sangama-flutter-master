import 'package:flutter/material.dart';
import 'pages/connections_page.dart'; // Ensure this is the correct import path

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConnectionsMainPage(), // This is the starting page of your app
    );
  }
}
