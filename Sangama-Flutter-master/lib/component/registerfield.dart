import 'package:flutter/material.dart';

class RegisterField extends StatelessWidget {
  final String lable;
  final String Hintext;
  final TextEditingController controller;

  RegisterField({
    super.key,
    required this.lable,
    required this.Hintext,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFFC3D9F0), // Outer shadow color
            ),
            BoxShadow(
              color: Color(0xFF294C74), // Inner shadow color
              spreadRadius: -4.0,
              blurRadius: 2.0,
              offset: Offset(2, 2),
            ),
          ],
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: lable,
            labelStyle: TextStyle(
              color: Color(0xFFD5EDFF), // Updated label text color
              fontSize: 20,
            ),
            hintText: Hintext,
            hintStyle: TextStyle(
              color: Color(0xFFD5EDFF), // Updated hint text color
              fontSize: 20,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)),
              borderSide: BorderSide(color: Colors.white60, width: 1.0), // Border color and width
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(0)),
              borderSide: BorderSide(color: Colors.white60, width: 1.0), // Border color and width
            ),
            filled: false,
          ),
        ),
      ),
    );
  }
}
