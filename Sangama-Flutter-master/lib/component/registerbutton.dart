import 'package:flutter/material.dart';

import '../pages/connections_page.dart';

class RegisterButton extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController idController;

  const RegisterButton({super.key, required this.nameController, required this.idController});

  @override
  Widget build(BuildContext context) {
    final _isPressed = ValueNotifier<bool>(false);

    return GestureDetector(
      onTapDown: (_) => _isPressed.value = true,
      onTapUp: (_) {
        _isPressed.value = false;
        print('Name: ${nameController.text}, ID: ${idController.text}');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ConnectionsMainPage()));
        // Perform registration logic here
      },
      child: ValueListenableBuilder<bool>(
        valueListenable: _isPressed,
        builder: (context, isPressed, child) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 200),
            width: isPressed ? 216.0 : 246.0,
            height: isPressed ? 40.0 : 50.0,
            decoration: BoxDecoration(
              color: Color(0xFFD5EDFF), // Button color
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: isPressed
                  ? null
                  : [
                      BoxShadow(
                        color: Color(0xFFD5EDFF), // Shadow color
                        offset: Offset(3, 3),
                        spreadRadius: 4,
                        blurRadius: 1.0,
                      )
                    ],
            ),
            child: Center(
              child: Text(
                "Register",
                style: TextStyle(
                  fontFamily: 'Inter',
                  color: Color(0xFF294C74), // Register text color
                  fontSize: 24,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
